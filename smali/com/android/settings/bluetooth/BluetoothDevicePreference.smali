.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Lcom/htc/preference/HtcPreference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BLUETOOTH_SHARED_PREFERENCES:Ljava/lang/String; = "bluetooth_shared_preferences"

.field private static final TAG:Ljava/lang/String; = "BluetoothDevicePreference"

.field private static sDimAlpha:F


# instance fields
.field private mBluetoothSharedPreferences:Landroid/content/SharedPreferences;

.field private final mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 68
    sget v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 69
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 70
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 71
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    sput v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:F

    .line 74
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 76
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 77
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 78
    .local v1, um:Landroid/os/UserManager;
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    const v2, 0x7f0400b9

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 83
    .end local v1           #um:Landroid/os/UserManager;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 86
    return-void
.end method

.method private GetBluetoothLastPairedDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "btaddr"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth_shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mBluetoothSharedPreferences:Landroid/content/SharedPreferences;

    .line 368
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mBluetoothSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 230
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    const v5, 0x7f0c0bb8

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    :cond_0
    const v5, 0x7f0c0bab

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f0c0baa

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 243
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 245
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 7

    .prologue
    .line 317
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcTag()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    const v4, 0x7f0200cc

    .line 359
    :goto_0
    return v4

    .line 321
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 322
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 343
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 344
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 345
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 346
    .local v4, resId:I
    if-eqz v4, :cond_1

    goto :goto_0

    .line 325
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v3           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    .end local v4           #resId:I
    :sswitch_0
    const v4, 0x7f0200e0

    goto :goto_0

    .line 328
    :sswitch_1
    const v4, 0x7f0200d1

    goto :goto_0

    .line 331
    :sswitch_2
    invoke-static {v0}, Lcom/android/settings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_0

    .line 334
    :sswitch_3
    const v4, 0x7f0200dd

    goto :goto_0

    .line 340
    :cond_2
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 350
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    :cond_3
    if-eqz v0, :cond_5

    .line 351
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 352
    const v4, 0x7f0200da

    goto :goto_0

    .line 355
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 356
    const v4, 0x7f0200db

    goto :goto_0

    .line 359
    :cond_5
    const v4, 0x7f0200cd

    goto :goto_0

    .line 323
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()Ljava/lang/String;
    .locals 14

    .prologue
    const v13, 0x7f0c08fe

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 255
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 257
    .local v2, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v7, 0x0

    .line 258
    .local v7, profileConnected:Z
    const/4 v0, 0x0

    .line 259
    .local v0, a2dpNotConnected:Z
    const/4 v4, 0x0

    .line 263
    .local v4, headsetNotConnected:Z
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 264
    .local v6, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v2, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v3

    .line 266
    .local v3, connectionStatus:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    invoke-interface {v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 277
    instance-of v9, v6, Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v9, :cond_1

    .line 278
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v3}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 312
    .end local v3           #connectionStatus:I
    .end local v6           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return-object v9

    .line 272
    .restart local v3       #connectionStatus:I
    .restart local v6       #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :pswitch_2
    const/4 v7, 0x1

    .line 273
    goto :goto_0

    .line 279
    :cond_1
    instance-of v9, v6, Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v9, :cond_0

    .line 280
    const/4 v4, 0x1

    goto :goto_0

    .line 287
    .end local v3           #connectionStatus:I
    .end local v6           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_2
    if-eqz v7, :cond_6

    .line 288
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0bb2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 290
    :cond_3
    if-eqz v0, :cond_4

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0bb0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 292
    :cond_4
    if-eqz v4, :cond_5

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0baf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 295
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0bae

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 299
    :cond_6
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 312
    const/4 v9, 0x0

    goto :goto_1

    .line 301
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0bb7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 303
    :pswitch_4
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->GetBluetoothLastPairedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, bluetoothpaireddate:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {v9, v13, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 307
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0f71

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, unknown:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v8, v10, v11

    invoke-virtual {v9, v13, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 299
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0cc3

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 200
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 202
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    .line 205
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 189
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 142
    const-string v2, "bt_checkbox"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    const-string v2, "bt_checkbox"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1, v2, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 162
    const v2, 0x7f09017b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .local v0, deviceDetails:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f80

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 167
    :cond_1
    const v2, 0x7f09017a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 168
    .local v1, llayout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_2

    .line 169
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    .end local v1           #llayout:Landroid/widget/LinearLayout;
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 175
    return-void

    .line 165
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_3
    sget v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:F

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 182
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 212
    .local v0, bondState:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0c0400

    :goto_1
    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0401

    goto :goto_1

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 222
    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getExtensionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, summary:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 124
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 133
    return-void

    .line 115
    .end local v0           #iconResId:I
    .end local v1           #summary:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getExtensionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    .restart local v0       #iconResId:I
    .restart local v1       #summary:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onOutOfRangeLocationChanged()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onPrepareForRemoval()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 104
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 94
    return-void
.end method
