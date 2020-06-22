*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variables/OrderFlowVariables.robot

*** Keywords ***
Verify Login Page
    Wait Until Keyword Succeeds    20    3    Title Should Be    nopCommerce demo store. Login

EmptyCart
    Sleep    1s
    Click Element    xpath://*[@id="topcartlink"]/a/span[1]
    Sleep    2s
    Wait Until Element Is Visible    xpath:/html/body/div[6]/div[3]/div/div/div/div[1]/h1    10
    ${elements}    Get WebElements    //*[@name="removefromcart"]
    ${elementcount}    Get Element Count    //*[@name="removefromcart"]
    FOR    ${x}    IN RANGE    0    ${elementcount}
        Click Element    ${elements}[${x}]
    END
    Click Element    //*[@id="shopping-cart-form"]/div[2]/div[1]/input[1]
    Wait Until Element Contains    ${emptycartmessage}    Your Shopping Cart is empty!

Open browser and load page
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${logo}    10

Navigate to Login Page
    Click Element    ${loginlink}
    Wait Until Element Is Visible    ${emailfield}    10s
    Sleep    1
    Verify Login Page

Log In With Valid Credentials
    Input Text    ${emailfield}    ${email}
    Input Text    ${passfield}    ${password}
    Click Element    ${loginbtn}

Check Cart Condition
    ${checkcart}    Get Text    //*[@id="topcartlink"]/a/span[2]
    ${cartInteger}    String.Remove String    ${checkcart}    (    )
    Set Suite Variable    ${cartInteger}

Navigate to Cellphones Menu
    Mouse Over    ${electronicstab}
    Click Element    ${cellphonestab}
    Wait Until Element Contains    ${cellphonestitle}    Cell phones

Add Item to Cart
    Input Text    ${quantity}    2
    Click Element    ${celladdtocartbtn}
    Wait Until Element Contains    ${successmsg}    The product has been added to your
    Wait Until Element Is Not Visible    ${successmsg}

Navigate to Desktops Menu
    Mouse Over    ${computerstab}
    Click Element    ${desktoptab}
    Wait Until Element Contains    ${desktopstitle}    Desktops

Configure Item
    Wait Until Element Contains    ${itempagetitle}    Build your own computer
    Select From List By Value    ${processor}    2
    Select From List By Value    ${ram}    5
    Click Element    ${hdd}
    Click Element    ${os}
    Click Element    ${adobeacrobat}
    Click Element    ${pcaddtocartbtn}
    Wait Until Element Contains    ${successmsg}    The product has been added to your

Click on Shopping Cart
    Click Element    ${shoppingcart}
    Wait Until Element Contains    ${shoppingtitle}    Shopping cart

Proceed to Checkout
    Click Element    ${termscheckbox}
    Click Element    ${checkoutbtn}

Verify Checkout and Proceed
    Wait Until Element Is Visible    ${checkouttitle}    10
    Click Element    ${continuebtnaddress}

Select Shipping Option
    Wait Until Element Is Visible    ${shippingoption}
    Click Element    ${shippingoption}

Select Shipping Method
    Wait Until Element Is Visible    ${shippingmethod}
    Click Element    ${shippingmethod}

Select Payment Method
    Wait Until Element Is Visible    ${paymentmethod}
    Click Element    ${paymentmethod}

Check Payment Info
    Wait Until Element Is Visible    ${paymentinfo}
    Click Element    ${paymentinfo}

Confirm Order
    Wait Until Element Is Visible    ${confirmbutton}
    Click Element    ${confirmbutton}

Success Message
    Wait Until Element Contains    ${successorder}    Your order has been successfully processed!
    Wait Until Element Is Visible    ${successorder}

Navigate to Item Detailed Page
    Click Element    ${Nokialink}
    Wait Until Element Contains    //h1[@itemprop='name']    Nokia Lumia 1020
Add HTC One M8 to Compare List
    Click Element    ${cell1comparebtn}

Add HTC One Mini to Compare List
    Click Element    ${cell2comparebtn}

Add Nokia Lumia 1020 to Compare List
    Click Element    ${cell3comparebtn}

Click Notification To Continue To Comparison
    Click Element    ${comparenotification}

Click To Build Custom PC
    Click Element    ${buildownpc}

Click To Continue Shopping
    Click Element    ${continueshoppingbtn}