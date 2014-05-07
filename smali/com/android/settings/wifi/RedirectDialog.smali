.class public Lcom/android/settings/wifi/RedirectDialog;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;
    }
.end annotation


# static fields
.field public static final DIALOG_LAN:I = 0x3eb

.field public static final DIALOG_OFFLOAD:I = 0x3ea

.field public static final DIALOG_REDIRECT:I = 0x3e9

.field public static final DIALOG_TROUBLESHOOTING:I = 0x3ed

.field public static final DIALOG_WAN:I = 0x3ec

.field private static final TAG:Ljava/lang/String; = "RedirectWarning"

.field private static final URL:Ljava/lang/String; = "http://www.google.com"


# instance fields
.field private DEBUG:Z

.field private mDialogId:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mNetworkId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRedirectURL:Ljava/lang/String;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 41
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/RedirectDialog;->DEBUG:Z

    .line 351
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/RedirectDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/RedirectDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/RedirectDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mNetworkId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/RedirectDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/RedirectDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/RedirectDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/RedirectDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings/wifi/RedirectDialog;->DEBUG:Z

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 141
    .local v2, netinfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 143
    .local v1, connect:Z
    if-nez v1, :cond_0

    iget v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    if-lez v3, :cond_0

    .line 144
    iget v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RedirectDialog;->dismissDialog(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 149
    .end local v1           #connect:Z
    .end local v2           #netinfo:Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 349
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v6, 0x3e9

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0f0088

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "redirectTo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    .line 87
    const-string v3, "dialogType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    .line 89
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RedirectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 90
    const-string v3, "RedirectWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDialogId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    if-ne v3, v6, :cond_1

    .line 94
    iput v6, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    .line 95
    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 96
    const-string v3, "www.google.com"

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    .line 101
    :cond_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RedirectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 104
    new-instance v3, Lcom/android/settings/wifi/RedirectDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/RedirectDialog$1;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 115
    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 116
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mNetworkId:I

    .line 117
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/RedirectDialog;->showDialog(I)V

    .line 121
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mFilter:Landroid/content/IntentFilter;

    .line 122
    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    new-instance v3, Lcom/android/settings/wifi/RedirectDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/RedirectDialog$2;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    return-void

    .line 119
    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RedirectDialog;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v10, 0x7f0c0389

    const v9, 0x7f0c00a6

    const v7, 0x7f0900f5

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 171
    const/16 v5, 0x3e9

    if-ne p1, v5, :cond_1

    .line 173
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c085b

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0f8a

    new-instance v7, Lcom/android/settings/wifi/RedirectDialog$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/RedirectDialog$4;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0f8b

    new-instance v7, Lcom/android/settings/wifi/RedirectDialog$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/RedirectDialog$3;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c085d

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 344
    :cond_0
    :goto_0
    return-object v2

    .line 198
    :cond_1
    const/16 v5, 0x3ea

    if-ne p1, v5, :cond_2

    .line 200
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c038b

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c00a3

    new-instance v7, Lcom/android/settings/wifi/RedirectDialog$7;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/RedirectDialog$7;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c00a4

    new-instance v7, Lcom/android/settings/wifi/RedirectDialog$6;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/RedirectDialog$6;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/RedirectDialog$5;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/RedirectDialog$5;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c038c

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 231
    .local v2, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 232
    .end local v2           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_2
    const/16 v5, 0x3ec

    if-ne p1, v5, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04008b

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 236
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 237
    .local v0, button:Lcom/htc/widget/HtcRimButton;
    new-instance v5, Lcom/android/settings/wifi/RedirectDialog$8;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/RedirectDialog$8;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v5, 0x7f090100

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 249
    .local v1, checkbox:Lcom/htc/widget/HtcCheckBox;
    new-instance v5, Lcom/android/settings/wifi/RedirectDialog$9;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/RedirectDialog$9;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcCheckBox;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 257
    const v5, 0x7f0900ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/RedirectDialog$10;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/RedirectDialog$10;-><init>(Lcom/android/settings/wifi/RedirectDialog;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 265
    .local v3, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 266
    const v5, 0x7f0900fe

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 268
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0b2c

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/RedirectDialog$12;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/RedirectDialog$12;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v10, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/RedirectDialog$11;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/RedirectDialog$11;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v9, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 287
    .restart local v2       #dialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 291
    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    .end local v1           #checkbox:Lcom/htc/widget/HtcCheckBox;
    .end local v2           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v3           #outValue:Landroid/util/TypedValue;
    .end local v4           #view:Landroid/view/View;
    :cond_3
    const/16 v5, 0x3eb

    if-ne p1, v5, :cond_4

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040086

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 294
    .restart local v4       #view:Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 295
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    new-instance v5, Lcom/android/settings/wifi/RedirectDialog$13;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/RedirectDialog$13;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0385

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/RedirectDialog$15;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/RedirectDialog$15;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v10, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/RedirectDialog$14;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/RedirectDialog$14;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v9, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 324
    .restart local v2       #dialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 327
    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    .end local v2           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v4           #view:Landroid/view/View;
    :cond_4
    const/16 v5, 0x3ed

    if-ne p1, v5, :cond_0

    .line 329
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0386

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c00e3

    new-instance v7, Lcom/android/settings/wifi/RedirectDialog$16;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/RedirectDialog$16;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0387

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 341
    .restart local v2       #dialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "redirectTo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    .line 69
    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, dialogId:I
    iget-boolean v2, p0, Lcom/android/settings/wifi/RedirectDialog;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RedirectWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " get mDialogId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/RedirectDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    if-lez v0, :cond_0

    .line 164
    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/RedirectDialog;->dismissDialog(I)V

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/RedirectDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method
