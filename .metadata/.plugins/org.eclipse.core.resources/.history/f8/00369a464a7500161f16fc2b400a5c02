public class leadcls {
public static integer k=0;

    public list<leadWapp> getData123() {
        return mylst;
    }
list<leadWapp> mylst= new list<leadWapp>();

    public PageReference Show() {
    
   for(lead i:[select name, phone,company from lead])
   {
   leadWapp wp= new leadWapp();
   wp.a=++k;
   wp.b=true;
   wp.l=i;
  mylst.add(wp);
   }
   
        return null;
    }


class leadWapp
{
public Integer a{set;get;}

public boolean b{set;get;}
public lead l {set;get;} 
}


}