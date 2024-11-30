from django.shortcuts import render
import datetime
from django.shortcuts import redirect ,HttpResponse
from datetime import date
from django.core.files.storage import FileSystemStorage
from .models import login as log,Staff as stf,User as usr,Complaint as comp,Disease as dis , Leaf as lfs, InfrastructureBooking as itb, Scheme as scm,AppliedScheme as ascm
from .models import Infrastructure as infra
# Create your views here.

def index(request):
    msg=request.GET.get("msg","")
    if(request.session.get('role', ' ')=="admin"):
            response = redirect('/AdminHome')
            return response
    elif (request.session.get('role', ' ')== "staff"):
            response = redirect('/StaffHome')
            return response
    elif (request.session.get('role', ' ')== "user"):
            response = redirect('/UserHome')
            return response
    else:
            return render(request,"index.html",{"msg":msg})
def login(request):
        if request.POST:
                user=request.POST["t1"]
                password=request.POST["t2"]
                try:
                        data=log.objects.get(username=user,password=password)
                        if(data.role=="admin"):
                                request.session['username'] = data.username
                                request.session['role'] = data.role
                                request.session['id'] = data.log_id
                                response = redirect('/AdminHome')
                                return response
                        elif (data.role=="user"):
                                request.session['username'] = data.username
                                request.session['role'] = data.role
                                request.session['id'] = data.log_id
                                response = redirect('/UserHome')
                                return response
                        elif (data.role=="staff"):
                                request.session['username'] = data.username
                                request.session['role'] = data.role
                                request.session['id'] = data.log_id
                                response = redirect('/StaffHome')
                                return response
                        else:
                                return render(request, "login.html", {"msg":"invalid account Details"})
                except:
                        return render(request, "login.html", {"msg":"invalid user name of password"})
        return render(request, "login.html", {"msg":""})
       

def Appoint_Staff(request):
    msg=""
    if request.POST:
        t1 = request.POST["t1"]
        t2 = request.POST["t2"]
        t3 = request.POST["t3"]
        t4 = request.POST["t4"]
        t5 = request.POST["t5"]
        t6=",".join(request.POST.getlist('t6'))
        
    
        t8 = request.FILES["t8"]
        fs = FileSystemStorage()
        fs.save(t8.name, t8)
        t9 = request.POST["t9"]
        t10 = request.POST["t10"]
        log.objects.create(username=t9, password=t10, role="staff")
        data=log.objects.last()
        stf.objects.create(Staff_name=t1,Staff_address=t2,Staff_email=t3,Staff_phone=t4,Staff_qualification=t6, Staff_designation=t5,Staff_photo=t8,Staff_status="approved",Staff_logid=data)
        msg=" successfully Appointed"
        #return HttpResponse(t6)
    else:    
        msg = ""
    
    return render(request,"Add_staff.html",{"msg":msg}) 


def register(request):
    msg=""
    if request.POST:
        t1=request.POST["t1"]
        t2=request.POST["t2"]
        t3=request.POST["t3"]
        t4=request.POST["t4"]
        t5=request.POST["t5"]
        log.objects.create(username=t4, password=t5, role="user")
        data=log.objects.last()
        usr.objects.create(User_name=t1,User_address=t2,User_phone=t3,User_status="Approved",User_logid=data)
        msg=" successfully registered"
    return render(request,"register.html",{"msg":msg})   

def AdminHome(request):
    return render(request,"adminhome.html",{"msg":""})

def UserHome(request):
    return render(request,"userhome.html",{"msg":""})

def StaffHome(request):
    return render(request,"staffhome.html",{"msg":""})
def Logout(request):
    try:
        del request.session['id']
        del request.session['role']
        del request.session['username']
        response = redirect("/index")
        return response
    except:
        response = redirect("/index")
        return response
def Privacy(request):
    msg=""
    if request.POST:
        t1=request.POST["t1"]
        t2=request.POST["t2"]
        id=request.session["id"]
        data=log.objects.get(log_id=id)
        if data.password==t1:
            msg="sucessfully updated"
            log.objects.filter(log_id=id).update(password=t2)
        else:
            msg="invalid current password"
    returnpage="adminhead.html"
    if request.session["role"] == "user":
        returnpage="userhead.html"
    elif request.session["role"] =="staff":
        returnpage="staffhead.html"
    return render(request, "privacy.html",{"role":returnpage,"msg":msg})

def Our_Staff(request):
        msg = ""
        data1=stf.objects.all()
        return render(request,"View_staff.html",{"msg":msg,"data":data1})
def delete_staff(request):
    stf.objects.filter(Staff_id=request.GET["id"]).delete()
    response = redirect('/Our_Staff')
    return response

def Our_Users(request):
    returnpage="adminhead.html"
    if request.session["role"] == "user":
        returnpage="userhead.html"
    elif request.session["role"] =="staff":
        returnpage="staffhead.html"
    msg = ""
    data1=usr.objects.all()
    return render(request,"View_user.html",{"role":returnpage,"msg":msg,"data":data1})

def delete_user(request):
    usr.objects.filter(User_id=request.GET["id"]).delete()
    response = redirect('/Our_Users')
    return response
def Manage_complaints(request):
        msg=""
        #datay=log.objects.get(log_id=request.session["id"])
        datax=usr.objects.get(User_logid=request.session["id"])
        if request.POST:
                t1 = request.POST["t1"]
                t2 = request.POST["t2"]
                today = date.today()
                
                msg="posted sucessfully"
                comp.objects.create(Complaint_subject=t1,Complaint_message=t2,Complaint_date=today,Complaint_reply="not yet Seen",User_id=datax)
        data1=comp.objects.all()
        #.filter(User_id=datax)
        return render(request, "Add_complaints.html",{"msg":msg,"data":data1})

def complaints(request):
        msg=""
        
        if request.POST:
                t1 = request.POST["t1"]
                t2 = request.POST["t2"]
                
                msg="updated sucessfully"
                comp.objects.filter(Complaint_id=t1).update(Complaint_reply=t2)
        data1=comp.objects.all()
        return render(request, "Answer_Queries.html",{"msg":msg,"data":data1})

def Manage_disease(request):
    msg=""
    if request.POST:
        t1=request.POST["t1"]
        t2=request.POST["t2"]
        f1=request.POST["f1"]
        t3=request.POST["t3"]
        leafs=lfs.objects.get(Leaf_id =f1 )
        dis.objects.create(Des_name=t1,Des_Details=t2,model_order=t3,Leaf=leafs)
        msg="save successfully"
    data = lfs.objects.all()
    return render(request,"Add_disease.html",{"msg":msg,"data":data})
def List_disease(request):
    msg=""
   
    data=dis.objects.all()
    #msg="save successfully"

    return render(request,"List_disease.html",{"msg":msg,"data":data})

def delete_dis(request):
    dis.objects.filter(Des_id=request.GET["id"]).delete()
    response = redirect('/List_disease')
    return response


def delete_leaf(request):
    lfs.objects.filter(Leaf_id=request.GET["id"]).delete()
    response = redirect('/ManageLeaf')
    return response

import numpy as np
#from sklearn.svm import SVC
import cv2


import numpy as np # linear algebra
#import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
import tensorflow as tf
from tensorflow import keras
from keras.models import Sequential
from keras.layers import Dense,Activation,Flatten,Dropout
from keras.layers import Conv2D,MaxPooling2D
from keras.callbacks import ModelCheckpoint
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras import layers
import tensorflow as tf
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
from keras.layers import Dense,Activation,Flatten,Dropout
from keras.layers import Conv2D,MaxPooling2D
from keras.callbacks import ModelCheckpoint

from tensorflow.keras.preprocessing import image

def leaf_detection(request):
    msg=""
    data = []
    out=""
    ret=""
    labels = []

    if request.POST:
        f1 = request.POST["f1"]
        leafs=lfs.objects.get(Leaf_id= f1)
        t8 = request.FILES["t1"]
        fs = FileSystemStorage()
        fs.save("totext/"+t8.name, t8)

        images_dir = 'leafset/'+leafs.Leaf_name+"/"
        datagen = ImageDataGenerator (
                rescale = 1./255, 
                shear_range=0.2,
                zoom_range=0.2,
                horizontal_flip=True,
                validation_split=0.2
                )
        train_generator  =    datagen.flow_from_directory(
                                images_dir,
                                seed=42,
                                target_size = (200,200),
                                batch_size =32 ,               
                                class_mode = 'binary',
                                subset = 'training'
                                )
        #LABELS = ['Apple_scab',  'Black_rot', 'Cedar_apple_rust', 'healthy']
        #ret=leafs.Leaf_model
        model = tf.keras.models.load_model('media/'+str(leafs.Leaf_model))

        test_image =image.load_img("media/totext/"+t8.name, target_size = (200,200,3)) 
        test_image = image.img_to_array(test_image)
        test_image = np.expand_dims(test_image, axis = 0)
        result = model.predict(test_image)
        answer = np.argmax(result,axis=1) 
        #print(answer)
        train_generator.class_indices
        #print(LABELS[answer[0]])
        deslabel=answer[0]
        ret = dis.objects.get(Leaf = f1,model_order = deslabel)


        #sfsjsdjfskjdfghsdfk
        '''datad=dis.objects.all()
        for dta in datad:
            label=dta.Des_id
            datap=dpic.objects.filter(Des_id=dta).all()
            for dtp in datap:
                img_path="media/"+str(dtp.photo)
                train=cv2.imread(img_path,0)
                train=cv2.resize(train,(50,50))
                image= np.array(train).flatten()
                data.append([image,label])
        features=[]
        labels=[]
        for feature,label in data:
            features.append(feature)
            labels.append(label)
        test=[]
        train=cv2.imread("media/totext/"+t8.name,0)
        train=cv2.resize(train,(50,50))
        image= np.array(train).flatten()
            #image= np.array(frame).flatten()
        test.append([image,0])
        tr=[]     
        for feat,lab in test:
            tr.append(feat)
        model=SVC(C=1,kernel='poly',gamma= 'auto')
        model.fit(features,labels)
        prediction=model.predict(tr)
        out=prediction[0]
        
        if (out != "" ) & ( out != 0) :
            ret=dis.objects.get(Des_id=out)
        '''
        
    data = lfs.objects.all()

    return render(request,"leaf_detection.html",{"msg":msg,"data":ret,"leaf" : data})

def Generate(request):
    LABELS = ['Apple_scab',  'Black_rot', 'Cedar_apple_rust', 'healthy']
    images_dir = 'leafset/'
    datagen = ImageDataGenerator (
                rescale = 1./255, 
                shear_range=0.2,
                zoom_range=0.2,
                horizontal_flip=True,
                validation_split=0.2
                )
    train_generator  =    datagen.flow_from_directory(
                                images_dir,
                                seed=42,
                                target_size = (200,200),
                                batch_size =32 ,               
                                class_mode = 'binary',
                                subset = 'training'
                                )
    Validation_generator = datagen.flow_from_directory(
                                images_dir ,
                                seed=42, 
                                target_size = (200,200),
                                batch_size = 32 ,               
                                class_mode = 'binary',
                                subset = 'validation'
                                )

    model=Sequential()

    model.add(Conv2D(32,(3,3),input_shape=(200,200,3)))
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2,2)))
    #The first CNN layer followed by Relu and MaxPooling layers

    model.add(Conv2D(64,(3,3)))
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2,2)))
    #The second convolution layer followed by Relu and MaxPooling layers

    model.add(Flatten())
    model.add(Dropout(0.5))
    #Flatten layer to stack the output convolutions from second convolution layer
    model.add(Dense(128,activation='relu'))
    #Dense layer of 128 neurons
    model.add(Dense(4,activation='softmax'))
    #The Final layer with two outputs for two categories

    model.compile(loss='sparse_categorical_crossentropy',optimizer='adam',metrics=['accuracy'])

    H = model.fit_generator(
                        train_generator ,
                        epochs = 10,
                        validation_data = Validation_generator)
    model.save("leaf.h5")
    return redirect("Manage_disease")

def ManageLeaf(request):
    msg = "" 
    if request.POST:
        leafname=request.POST["t1"]
        leafmodel = request.FILES["t2"]
        lfs.objects.create(Leaf_name = leafname,Leaf_model = leafmodel)
        msg="New leaf data added"
    data = lfs.objects.all()
    return render(request,"Add_Leaf.html",{"msg":msg,"data":data})

def Infrastructure(request):
    msg=""
    data=""
    if request.POST:
        t1=request.POST["t1"]
        t2=request.POST["t2"]
        t3=request.POST["t3"]
        id=request.session["id"]
        dts=stf.objects.get(Staff_logid=id)
        infra.objects.create(Infrastructure_name=t1,Infrastructure_det=t2,Infrastructure_cost=t3,staff_logid=dts)
    return render(request,"Infrastructure.html",{"msg":msg,"data":data})

def List_infra(request):
    msg=""
    id=request.session["id"]
    dts=stf.objects.get(Staff_logid=id)
    data=infra.objects.filter(staff_logid=dts).all()
    #msg="save successfully"

    return render(request,"List_infra.html",{"msg":msg,"data":data})

def staff_list_booked_infra(request):
    msg=""
    id=request.session["id"]
    dts=stf.objects.get(Staff_logid=id)
    data=itb.objects.filter(infrastructure__staff_logid=dts)
    return render(request,"viewinfrabooking.html",{"msg":msg,"data":data})

def User_List_infra(request):
    msg=""
    id=request.session["id"]
    data=infra.objects.all()
    #msg="save successfully"

    return render(request,"user_infra.html",{"msg":msg,"data":data})

def delete_infra(request):
    infra.objects.filter(Infrastructure_id=request.GET["id"]).delete()
    response = redirect('/List_infra')
    return response

def approve_infra_booking(request):
    data=itb.objects.get(booking_id=request.GET['id'])
    data.status='approved'
    data.save()
    return redirect('staff_list_booked_infra')
def reject_infra_booking(request):
    data=itb.objects.get(booking_id=request.GET['id'])
    data.status='rejected'
    data.save()
    return redirect('staff_list_booked_infra')




def book_infra(request):
    user=usr.objects.get(User_logid_id=request.session['id'])
    datac=itb.objects.filter(infrastructure_id=request.GET["id"],user=user).count()
    if datac==0:
        data=infra.objects.get(Infrastructure_id=request.GET["id"])
        user=usr.objects.get(User_logid_id=request.session['id'])
        itb.objects.create(user=user,infrastructure=data,status="pending verification")
        return redirect('/list_booked_infra')
    else:
        data=infra.objects.all()
        msg="Infrastructure already booked"

        return render(request,"user_infra.html",{"msg":msg,"data":data})

def list_booked_infra(request):
    user=usr.objects.get(User_logid_id=request.session['id'])
    data=itb.objects.filter(user=user)
    context={
        'data':data
    }
    return render(request,'user_booked_infra.html',context)




def add_scheme(request):
    if request.POST:
        t1=request.POST['t1']
        t2=request.POST['t2']
        scm.objects.create(scheme_name=t1,scheme_details=t2,scheme_status="active")
        return redirect('list_scheme')
    return render(request,'add_scheme.html')


def list_scheme(request):
    data=scm.objects.filter(scheme_status="active")
    context={
        'data':data
            }

    return render(request,'schemelist.html',context)



def delete_scheme(request):
    scm.objects.filter(scheme_id=request.GET["id"]).delete()
    response = redirect('list_scheme')
    return response


def list_staffapproved_scheme(request):
    data=ascm.objects.all()
    context={
        'data':data
            }
    return render(request,'staffapprovedscheme.html',context)
def approve_scheme(request):
    data=ascm.objects.get(booking_id=request.GET['id'])
    data.status="approved"
    data.save()
    return redirect('list_staffapproved_scheme')


def reject_scheme(request):
    data=ascm.objects.get(booking_id=request.GET['id'])
    data.status="rejected"
    data.save()
    return redirect('list_staffapproved_scheme')



def user_list_scheme(request):
    data=scm.objects.filter(scheme_status='active')
    context={
        'data':data
            }
    return render(request,'user_scheme.html',context)

def apply_scheme(request):
    user=usr.objects.get(User_logid_id=request.session['id'])
    datac=ascm.objects.filter(scheme_id=request.GET["id"],user=user).count()
    print(datac)
    if datac==0:
        data=scm.objects.get(scheme_id=request.GET["id"])
        user=usr.objects.get(User_logid_id=request.session['id'])
        ascm.objects.create(user=user,scheme=data,status="pending verification")
        return redirect('/list_applied_scheme')
    else:
        data=scm.objects.filter(scheme_status='active')
        msg="scheme already Applied"

        return render(request,"user_scheme.html",{"msg":msg,"data":data})

def list_applied_scheme(request):
    user=usr.objects.get(User_logid_id=request.session['id'])
    data=ascm.objects.filter(user=user)
    context={
        'data':data
    }
    return render(request,'appliedschemelist.html',context)



def staff_list_applied_scheme(request):
    msg=""
    id=request.session["id"]
    data=ascm.objects.all()
    return render(request,"viewschemebooking.html",{"msg":msg,"data":data})



def verify_scheme_booking(request):
    data=ascm.objects.get(booking_id=request.GET['id'])
    data.status='waiting for approval'
    data.save()
    return redirect('staff_list_applied_scheme')


def reject_scheme_booking(request):
    data=itb.objects.get(booking_id=request.GET['id'])
    data.status='rejected'
    data.save()
    return redirect('staff_list_booked_infra')
