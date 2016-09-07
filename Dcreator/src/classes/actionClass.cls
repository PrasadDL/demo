public class actionClass {

    public list<lead> getData() {
        return lst;
    }
list<lead> lst= new list<lead>();

    public String v1 { get; set; }

    public  pagereference doThis() {
        v1='u r action is working dude';
 lst=[select name, phone from lead];
        return null;
    }




}