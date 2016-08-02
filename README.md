# BXBox

##  作者:卞翔
##  联系qq:1023537528
##  QQ交流群:160603792

## BXBox: 一个快速切换View的小控件，类似于tabbar



###该组件使用方法如下：
```swift
class ViewController: UIViewController {

    @IBOutlet weak var box: BXBox!

    var bx:BXBox!

    override func viewDidLoad() {
    super.viewDidLoad()


        let v1 = UIView()
        v1.backgroundColor = UIColor.blueColor()
        let v2 = UIView()
        v2.backgroundColor = UIColor.blackColor()
        let v3 = UIView()
        v3.backgroundColor = UIColor.yellowColor()
        let v4 = UIView()
        v4.backgroundColor = UIColor.redColor()
        let v5 = UIView()
        v5.backgroundColor = UIColor.grayColor()


        let v6 = UIView()
        v6.backgroundColor = UIColor.grayColor()
        let v7 = UIView()
        v7.backgroundColor = UIColor.redColor()
        let v8 = UIView()
        v8.backgroundColor = UIColor.yellowColor()
        let v9 = UIView()
        v9.backgroundColor = UIColor.blackColor()
        let v10 = UIView()
        v10.backgroundColor = UIColor.blueColor()


        //Xib使用方法
        box.childViews = [v1,v2,v3,v4,v5]


        //代码使用方法
        bx = BXBox(frame: CGRectMake(200, 30, 100, 100))
        bx.childViews = [v6,v7,v8,v9,v10]
        self.view.addSubview(bx)



    }


    @IBAction func btn(sender: UIButton) {

        //随机产生一个第index页

        box.index = Int(arc4random_uniform(4))
        print("第\(box.index)页")


        bx.index = Int(arc4random_uniform(4))
        print("第\(bx.index)页")
    }


}


```