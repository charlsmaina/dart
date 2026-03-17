
void main()
{
    // null aware in lists
    int ? absentValue = null;
    int ? presentValue = 3;
    var items = [1,?absentValue,?presentValue,5,6];//null is not inserted
    print(items);

    // null awareness in maps
    String? presentKey ='Apple';
    String? absent_key = null;

    int? present_val = 10;
    int? absent_val = null;

    var map1 = {?presentKey:?absent_key};
    print(map1);
    var map2 = {presentKey:absent_val};
    print(map2);
    var map3 = {absent_key:absent_val};
    print(map3);


}
