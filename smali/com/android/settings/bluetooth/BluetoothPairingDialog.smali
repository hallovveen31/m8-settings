.class public final Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_PASSKEY_MAX_LENGTH:I = 0x6

.field private static final BLUETOOTH_PIN_MAX_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingDialog"


# instance fields
.field private mAlphanumericPin:Lcom/htc/widget/HtcCheckBox;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlphanumericPin:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method private createConfirmationDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 278
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c0cb6

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 279
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    .line 280
    const v1, 0x7f0c0cc0

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 281
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 282
    const v1, 0x7f0c0cc1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 283
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 285
    return-void
.end method

.method private createConsentDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .parameter "deviceManager"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 289
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c0cb6

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 290
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    .line 291
    const v1, 0x7f0c0cc0

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 292
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 293
    const v1, 0x7f0c0cc1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 294
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 296
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 4
    .parameter "deviceManager"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 301
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f0c0cb6

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 302
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    .line 303
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 304
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 309
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 313
    .local v1, pinBytes:[B
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView(Lcom/htc/app/HtcAlertController$AlertParams;Ljava/lang/String;)Landroid/view/View;
    .locals 12
    .parameter "p"
    .parameter "deviceName"

    .prologue
    const/4 v7, 0x0

    const v11, 0x7f090022

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f040013

    invoke-virtual {v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 197
    .local v5, view:Landroid/view/View;
    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 198
    .local v3, messageView1:Landroid/widget/TextView;
    const v6, 0x7f090024

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 199
    .local v4, messageView2:Landroid/widget/TextView;
    const v6, 0x7f090023

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcCheckBox;

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlphanumericPin:Lcom/htc/widget/HtcCheckBox;

    .line 200
    const v6, 0x7f090021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 201
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v6, p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlphanumericPin:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v6, p0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v8, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v8, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 229
    const-string v6, "BluetoothPairingDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 240
    .end local v5           #view:Landroid/view/View;
    :goto_0
    return-object v5

    .line 214
    .restart local v5       #view:Landroid/view/View;
    :pswitch_0
    const v1, 0x7f0c03ef

    .line 215
    .local v1, messageId1:I
    const v2, 0x7f0c0cbb

    .line 217
    .local v2, messageId2:I
    const/16 v0, 0x10

    .line 234
    .local v0, maxLength:I
    :goto_1
    new-array v6, v10, [Ljava/lang/Object;

    aput-object p2, v6, v9

    invoke-virtual {p0, v1, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    .line 237
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

    new-array v7, v10, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 221
    .end local v0           #maxLength:I
    .end local v1           #messageId1:I
    .end local v2           #messageId2:I
    :pswitch_1
    const v1, 0x7f0c03f0

    .line 222
    .restart local v1       #messageId1:I
    const v2, 0x7f0c0cbc

    .line 224
    .restart local v2       #messageId2:I
    const/4 v0, 0x6

    .line 225
    .restart local v0       #maxLength:I
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createUserEntryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 3
    .parameter "deviceManager"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 182
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c0cb6

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 183
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createPinEntryView(Lcom/htc/app/HtcAlertController$AlertParams;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 184
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 185
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 186
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 187
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 190
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 191
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    return-void
.end method

.method private createView(Lcom/htc/app/HtcAlertController$AlertParams;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 6
    .parameter "p"
    .parameter "deviceManager"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 246
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, name:Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 270
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received, not creating view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 253
    const v2, 0x7f0c03f2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, messageText:Ljava/lang/String;
    :goto_1
    iput-object v0, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 255
    .end local v0           #messageText:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c03f1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 261
    .end local v0           #messageText:Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0c03f3

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 266
    .end local v0           #messageText:Ljava/lang/String;
    :pswitch_2
    const v2, 0x7f0c03f4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_1

    .line 250
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 365
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 330
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 359
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 332
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 333
    .local v1, pinBytes:[B
    if-eqz v1, :cond_0

    .line 336
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 340
    .end local v1           #pinBytes:[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, passkey:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 346
    .end local v0           #passkey:I
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 355
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    :cond_0
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 393
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 375
    packed-switch p2, :pswitch_data_0

    .line 386
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 389
    :goto_0
    return-void

    .line 377
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlphanumericPin:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v0, :cond_0

    .line 403
    check-cast p1, Lcom/htc/widget/HtcCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Lcom/htc/widget/HtcAutoCompleteTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, -0x8000

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f0f0088

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 99
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 166
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 108
    .local v2, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_1

    .line 109
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Error: BluetoothAdapter not supported by system"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 115
    .local v0, deviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 116
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 118
    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 157
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 121
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 125
    :pswitch_1
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 127
    .local v4, passkey:I
    if-ne v4, v7, :cond_2

    .line 128
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 132
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 130
    :cond_2
    const-string v5, "%06d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_2

    .line 137
    .end local v4           #passkey:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConsentDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 142
    :pswitch_3
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 144
    .local v3, pairingKey:I
    if-ne v3, v7, :cond_3

    .line 145
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    :cond_3
    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 149
    const-string v5, "%06d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 153
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 151
    :cond_4
    const-string v5, "%04d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_3

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onDestroy()V

    .line 320
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 368
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 371
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Button;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 178
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 397
    return-void
.end method
