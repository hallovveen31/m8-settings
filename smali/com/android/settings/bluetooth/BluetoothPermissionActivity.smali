.class public Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionActivity"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRememberChoice:Lcom/htc/widget/HtcCheckBox;

.field private mRememberChoiceValue:Z

.field private mRequestType:I

.field private mReturnClass:Ljava/lang/String;

.field private mReturnPackage:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    .line 60
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    .line 61
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method private createCheckbox()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Lcom/htc/widget/HtcCheckBox;

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 179
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Lcom/htc/widget/HtcCheckBox;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$3;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createConnectionDialogView(Lcom/htc/app/HtcAlertController$AlertParams;)V
    .locals 5
    .parameter "p"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, mRemoteName:Ljava/lang/String;
    const v2, 0x7f0c0bcb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, mMessage1:Ljava/lang/String;
    iput-object v0, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 169
    return-void
.end method

.method private createFtpDialogView(Lcom/htc/app/HtcAlertController$AlertParams;)V
    .locals 5
    .parameter "p"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, mRemoteName:Ljava/lang/String;
    const v2, 0x7f0c0add

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, mMessage1:Ljava/lang/String;
    iput-object v0, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 220
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createCheckbox()Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 221
    return-void
.end method

.method private createMapDialogView(Lcom/htc/app/HtcAlertController$AlertParams;)V
    .locals 5
    .parameter "p"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, mRemoteName:Ljava/lang/String;
    const v2, 0x7f0c0adc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, mMessage1:Ljava/lang/String;
    iput-object v0, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 212
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createCheckbox()Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 213
    return-void
.end method

.method private createPhonebookDialogView(Lcom/htc/app/HtcAlertController$AlertParams;)V
    .locals 5
    .parameter "p"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createRemoteName()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, mRemoteName:Ljava/lang/String;
    const v2, 0x7f0c0bcd

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, mMessage1:Ljava/lang/String;
    iput-object v0, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 204
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createCheckbox()Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 205
    return-void
.end method

.method private createRemoteName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const v1, 0x7f0c0f71

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    return-object v0

    .line 158
    .end local v0           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismiss()V

    .line 78
    return-void
.end method

.method private onNegative()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegative mRememberChoiceValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_1

    .line 237
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->savePermissionChoice(II)V

    .line 239
    :cond_1
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 243
    return-void
.end method

.method private onPositive()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 224
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositive mRememberChoiceValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_1

    .line 226
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->savePermissionChoice(II)V

    .line 228
    :cond_1
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 231
    return-void
.end method

.method private savePermissionChoice(II)V
    .locals 6
    .parameter "permissionType"
    .parameter "permissionChoice"

    .prologue
    .line 295
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 296
    .local v0, bluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 298
    .local v2, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 299
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    sget-boolean v3, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothPermissionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePermissionChoice permissionType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    if-nez v1, :cond_1

    .line 301
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 305
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 306
    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 312
    :cond_2
    :goto_0
    return-void

    .line 307
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 308
    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    goto :goto_0

    .line 309
    :cond_4
    const/16 v3, 0xb

    if-ne p1, v3, :cond_2

    .line 310
    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setFilePermissionChoice(I)V

    goto :goto_0
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 4
    .parameter "intentName"
    .parameter "allowed"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    :cond_0
    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToReceiver() Request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mReturnPackage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mReturnClass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    if-eqz p3, :cond_2

    .line 260
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    :cond_2
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 263
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 265
    return-void

    .line 255
    :cond_3
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;I)V
    .locals 4
    .parameter "title"
    .parameter "requestType"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 121
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialog() Request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 142
    :goto_0
    const v1, 0x7f0c0b43

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 143
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    const v1, 0x7f0c0b44

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 145
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 146
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 149
    return-void

    .line 127
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createConnectionDialogView(Lcom/htc/app/HtcAlertController$AlertParams;)V

    goto :goto_0

    .line 131
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView(Lcom/htc/app/HtcAlertController$AlertParams;)V

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createMapDialogView(Lcom/htc/app/HtcAlertController$AlertParams;)V

    goto :goto_0

    .line 139
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createFtpDialogView(Lcom/htc/app/HtcAlertController$AlertParams;)V

    goto :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "Back button pressed! ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    packed-switch p2, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 270
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onPositive()V

    goto :goto_0

    .line 274
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onNegative()V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, "BluetoothPermissionActivity"

    const-string v3, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 117
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 94
    const-string v2, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 95
    const-string v2, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 96
    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    .line 99
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() Request type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    if-ne v2, v5, :cond_2

    .line 102
    const v2, 0x7f0c0bc9

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    .line 114
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    goto :goto_0

    .line 103
    :cond_2
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    if-ne v2, v6, :cond_3

    .line 104
    const v2, 0x7f0c0bcc

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_1

    .line 105
    :cond_3
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 106
    const v2, 0x7f0c0bd0

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_1

    .line 107
    :cond_4
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 108
    const v2, 0x7f0c03e2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_1

    .line 110
    :cond_5
    const-string v2, "BluetoothPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: bad request type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onDestroy()V

    .line 284
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    .line 288
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method
