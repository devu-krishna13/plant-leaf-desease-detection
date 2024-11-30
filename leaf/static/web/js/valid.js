function val(t,id)
{
var alpha=/^[a-zA-Z ]+$/;
if(t.value=="")
{
document.getElementById(id).innerHTML="*";
t.focus();

}
else if(!(t.value.match(alpha)))
{
document.getElementById(id).innerHTML="invalid character";
t.value=="";
t.focus();


}
else{

document.getElementById(id).innerHTML="";
}
}

function phone(t,id,n)
{
var alpha=/^[0-9]+$/
if(t.value=="")
{
document.getElementById(id).innerHTML="*";
t.focus();
}
else if(!t.value.match(alpha))
{
document.getElementById(id).innerHTML="invalid number";
t.value=="";
t.focus();
}
else if(!(t.value.length==n))
{
document.getElementById(id).innerHTML="enter "+n +" digit number";
t.focus();
}
else
{
   document.getElementById(id).innerHTML="";
}
}

function pass(t,id)
{

if(!(t.value.length>=8))
{
document.getElementById(id).innerHTML="password must be 8 digits";
t.value=="";
t.focus();
}
else
{
   document.getElementById(id).innerHTML="";
}
} 

function validateEmail(emailField,id){
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(emailField.value) == false) 
        {
           document.getElementById(id).innerHTML="invalid mail id";
           emailField.value="";
           emailField.focus();    
        }

        else
        {
              document.getElementById(id).innerHTML="";
        }
}

function chpass(p1,p2,id)
{
    if(document.getElementById(p1).value!="")
    {
    
    if(document.getElementById(p1).value!=document.getElementById(p2).value)
    {
        
        document.getElementById(id).innerHTML='password mismatch';
        return false;
    }
    else
    {        document.getElementById(id).innerHTML='';

        return true;}
    }
    else
    {
                 document.getElementById(id).innerHTML='Fill Details';
   
            return false;
        
    }
    
}