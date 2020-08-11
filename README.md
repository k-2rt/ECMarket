# ECMarket

This is Online Shop Application.

<img width="814" alt="home_screen" src="https://user-images.githubusercontent.com/44741473/89861669-4af64700-dbe1-11ea-9abc-c8e9cbb40ccb.png">

# Requirement
- iOS 13.5
- Swift5
- CocoaPods 1.9.1
- Firebase/Core
- Firebase/Auth
- Firebase/Firestore
- Firebase/Storage
- Gallery
- InstantSearchClient
- EmptyDataSet-Swift
- NVActivityIndicatorView/AppExtension
- JGProgressHUD
- Stripe
- Alamofire ~> 4.8

# Functions
- Categories
- NVActivityIndicatorView
- Add photos
- Payment integration with Stripe
- Integrating Algolia
- Firebase users Authentication
- Firebase storage
- Firebase firestore
- Email confirmation

# Description

This app has 3 main steps.

- Add item.
- Buy item.
- Pay item.

Also there are some options. Like search, show detail, authentication etc.

# General Flow

First you need add item. Move from home screen and write title, price, description and images of item at Add item screen.

![f30642db5cb79d7bff58f28c0264c8f9](https://user-images.githubusercontent.com/44741473/89863087-4bdca800-dbe4-11ea-85bb-09e7da40bbcd.gif)

<br/>

When you press done button, start animation of indicator view. If data is finished to save to Firebase, you can see it at item list. 

![bba4da4030f56afc3cd6be474041cece](https://user-images.githubusercontent.com/44741473/89862014-08813a00-dbe2-11ea-8841-a243918f1a2c.gif)

<br/>

When you want to buy item, press right nub bar button(shopping cart). Then pressed item is saved to basket, you can see it at basket view.

![ff0fa5cc6984861e733d2bf9e594e855](https://user-images.githubusercontent.com/44741473/89860436-6744b480-dbde-11ea-904c-de295ce1814a.gif)

<br/>

You can search item at search view. If input text is matched title or description of item, it will appear at table view. Also you can buy it as above.

![e9027b2aba7f6cdcda734ecfd572332f](https://user-images.githubusercontent.com/44741473/89866251-30749b80-dbea-11ea-9ff5-6f3e6b011938.gif)

<br/>

Added items in basket is looked at basket view. Price and item count is caluculated automatically, and can delete it.
If press checkout button, pop up payment alert and can move to card infomation view.

![c0da65f42fbdc71e266174a7240e2258](https://user-images.githubusercontent.com/44741473/89860447-6ca1ff00-dbde-11ea-95f1-5b1a6b1931a0.gif)

<br/>

Finished pay it by stripe, you can check it at purchase history page at profile page.
You can update user name and address, also log in & log out from profile page.

![833565dc88f60a7d78e713b9b20676cb](https://user-images.githubusercontent.com/44741473/89861256-49784f00-dbe0-11ea-808c-7c1baac64a97.gif)

# Building
ECMarket uses CocoaPods for managing the installation of third-party libraries. <br/>
If you don't already have it installed, here's how you can do so:
Using RubyGems
```
$ sudo gem install cocoapod
```
Using Homebrew
```
$ brew install cocoapods
```
Run **`$ pod install`** in project's root directory.
