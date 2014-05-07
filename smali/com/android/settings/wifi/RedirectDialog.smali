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

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/RedirectDialog;->DEBUG:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/RedirectDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/RedirectDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/RedirectDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mNetworkId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/RedirectDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/RedirectDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/RedirectDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/RedirectDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/RedirectDialog;->DEBUG:Z

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->dismissDialog(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x3e9

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0f0088

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "redirectTo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    const-string v3, "dialogType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

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

    iget v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    if-ne v3, v6, :cond_1

    iput v6, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "www.google.com"

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    :cond_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v3, Lcom/android/settings/wifi/RedirectDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/RedirectDialog$1;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mNetworkId:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/wifi/RedirectDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/RedirectDialog$2;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    const v10, 0x7f0c0389

    const v9, 0x7f0c00a6

    const v7, 0x7f0900f5

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v5, 0x3e9

    if-ne p1, v5, :cond_1

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

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/16 v5, 0x3ea

    if-ne p1, v5, :cond_2

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

    goto :goto_0

    :cond_2
    const/16 v5, 0x3ec

    if-ne p1, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04008b

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    new-instance v5, Lcom/android/settings/wifi/RedirectDialog$8;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/RedirectDialog$8;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090100

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    new-instance v5, Lcom/android/settings/wifi/RedirectDialog$9;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/RedirectDialog$9;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcCompoundButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f0900ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/RedirectDialog$10;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/RedirectDialog$10;-><init>(Lcom/android/settings/wifi/RedirectDialog;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const v5, 0x7f0900fe

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

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

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x3eb

    if-ne p1, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040086

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    new-instance v5, Lcom/android/settings/wifi/RedirectDialog$13;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/RedirectDialog$13;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x3ed

    if-ne p1, v5, :cond_0

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

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "redirectTo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

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

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->dismissDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
