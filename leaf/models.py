from django.db import models

# Create your models here.
class login(models.Model):
    log_id = models.AutoField(primary_key=True)
    username = models.CharField("username", max_length=100)
    password = models.CharField("password", max_length=100)
    role = models.CharField("role", max_length=100)
#log_id,username,password,role
class Staff(models.Model):
   Staff_id= models.AutoField(primary_key=True)
   Staff_name= models.CharField("Name",max_length=100)
   Staff_address = models.CharField("Staff_address", max_length=500)
   Staff_email = models.EmailField("Staff_email", max_length=200)
   Staff_phone=models.CharField("Staff_phone",max_length=100)
   Staff_qualification = models.CharField("Staff_qualification", max_length=200)
   Staff_designation = models.CharField("Staff_designation", max_length=100)
   Staff_photo = models.FileField("Staff_photo", max_length=1000,upload_to='images/')
   Staff_status=models.CharField("Staff_status",max_length=50,default="")
   Staff_logid=models.ForeignKey(login, on_delete=models.CASCADE, null=True)
#Staff_id,Staff_name,Staff_address,Staff_email,Staff_phone,Staff_qualification,Staff_designation,Staff_photo,Staff_status,Staff_logid
class Infrastructure(models.Model):
    Infrastructure_id = models.AutoField(primary_key=True)
    Infrastructure_name= models.CharField("Name",max_length=100)
    Infrastructure_det= models.CharField("det",max_length=100)
    Infrastructure_cost= models.CharField("cost",max_length=100)
    staff_logid=models.ForeignKey(Staff, on_delete=models.CASCADE, null=True)
    infra_doc=models.FileField(upload_to='documents/',default=None)
#Infrastructure_id,Infrastructure_name,Infrastructure_det,Infrastructure_cost,staff_logid
class User(models.Model):
    User_id = models.AutoField(primary_key=True)
    User_name= models.CharField("Name",max_length=100)
    User_address = models.CharField("User_address", max_length=500)
    User_phone=models.CharField("User_phone",max_length=100)
    User_status=models.CharField("User_status",max_length=50,default="")
    User_logid=models.ForeignKey(login, on_delete=models.CASCADE, null=True)
#User_id,User_name,User_address,User_phone,User_status,User_logid
class Complaint(models.Model):
    Complaint_id= models.AutoField(primary_key=True)
    Complaint_subject= models.CharField("subject", max_length=100)
    Complaint_message= models.CharField("mesage", max_length=500)
    Complaint_date= models.CharField("date", max_length=100)
    Complaint_reply= models.CharField("replay", max_length=500)
    User_id =models.ForeignKey(User, on_delete=models.CASCADE, null=True)
#Complaint_id,Complaint_subject,Complaint_message,Complaint_date,Complaint_reply,User_id

class Leaf(models.Model):
    Leaf_id = models.AutoField(primary_key=True)
    Leaf_name = models.CharField("leaf_name",max_length=100)
    Leaf_model = models.FileField("cnnmodel", max_length=1000,upload_to='models/')
    #Leaf_id,Leaf_name,Leaf_model

class Disease(models.Model):
    Des_id= models.AutoField(primary_key=True)
    Des_name= models.CharField("Name",max_length=100)
    Des_Details= models.CharField("Des_Details", max_length=500)
    Leaf =models.ForeignKey(Leaf, on_delete=models.CASCADE, null=True)
    model_order = models.CharField("Name",max_length=100)
    
class InfrastructureBooking(models.Model):
    booking_id=models.AutoField(primary_key=True)
    user=models.ForeignKey(User,on_delete=models.CASCADE,null=True)
    infrastructure=models.ForeignKey(Infrastructure,on_delete=models.CASCADE,null=True)
    status=models.CharField("Status",max_length=50)
    
class Scheme(models.Model):
    scheme_id=models.AutoField(primary_key=True)
    scheme_name=models.CharField("Name",max_length=100)
    scheme_details=models.CharField("scheme_details",max_length=200,default=None)
    scheme_status=models.CharField("Status",max_length=100,default=None)
    scheme_doc=models.FileField(upload_to='documents/',default=None)


class AppliedScheme(models.Model):
    booking_id=models.AutoField(primary_key=True)
    user=models.ForeignKey(User,on_delete=models.CASCADE,null=True)
    scheme=models.ForeignKey(Scheme,on_delete=models.CASCADE,null=True)
    status=models.CharField("Status",max_length=50)
