.class public Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "HtcMobileDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;,
        Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_DISCONNECT_NOTIFY_USER_SELECT:Ljava/lang/String; = "com.htc.intent.ACTION_WIFI_DISCONNECT_NOTIFY_USER_SELECT"

.field private static final BUTTON_AUTO_DISMISS:I = 0x64

.field public static final CDMA_DATA_ERROR_CODE_IN_STRING:Ljava/lang/String; = "CDMA_DATA_ERROR_CODE_IN_STRING"

.field public static final CDMA_DATA_ERROR_CODE_IS_SHOWING:Ljava/lang/String; = "CDMA_DATA_ERROR_CODE_IS_SHOWING"

.field private static final CMCC_NOTIFY_PROPERTY:Ljava/lang/String; = "net.notify.block"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DIALOG_TYPE_BACK_TO_HOME:I = 0x3

.field public static final DIALOG_TYPE_DATAERROR:I = 0x2

.field public static final DIALOG_TYPE_HANDOFF:I = 0x4

.field public static final DIALOG_TYPE_ROAMING:I = 0x1

.field private static final EVENT_CHECK_CMCC_NOTIFY_STATE:I = 0x4

.field private static final EVENT_SHOW_DISMISS_TOAST:I = 0x1

.field private static final EVENT_SHOW_DISMISS_TOAST_AVAILABLE_NETWORK:I = 0x3

.field private static final EVENT_SHOW_DISMISS_TOAST_MOBILEDATA_OFF:I = 0x2

.field public static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field public static final EXTRA_ERR_EHRPD:Ljava/lang/String; = "ehrpd"

.field public static final EXTRA_ERR_LTE_EMM:Ljava/lang/String; = "lte_emm"

.field public static final EXTRA_ERR_LTE_ESM:Ljava/lang/String; = "lte_esm"

.field public static final EXTRA_ERR_MIP:Ljava/lang/String; = "mip"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final NEED_TO_SHOW_CT_DATA_ROAMING_WARNING:Ljava/lang/String; = "show_ct_data_roaming_warning"

.field private static final TAG:Ljava/lang/String; = "HtcMobileDataDialog"

.field public static final TOAST_TYPE_AVAILABLE_NETWORK:I = 0x2

.field public static final TOAST_TYPE_MOBILEDATA_OFF:I = 0x1


# instance fields
.field private mDataroamingConfirmListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogType:I

.field private mHandler:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;

.field private mHandoffConfirmListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mOrientation:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mWhich:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    iput v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDialogType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mReceiver:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

    iput v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mWhich:I

    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDataroamingConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandoffConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->unlockPersistWriteProtection()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mWhich:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->notifyUserSelection(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandler:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->DBG:Z

    return v0
.end method

.method private ensureMobileDataObjects()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-nez v0, :cond_0

    const-string v0, "HtcMobileDataDialog"

    const-string v1, "mHtcMobileNetworkEngine is null, rebind it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$4;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$4;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    :cond_0
    return-void
.end method

.method private notifyUserSelection(Landroid/content/Context;Z)V
    .locals 9

    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.net.ConnectivityManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "notifyUserSelection"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-boolean v5, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcMobileDataDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyUserSelection interface setup existed, set:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    sget-boolean v5, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcMobileDataDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyUserSelection interface setup not existed, set:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v5, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcMobileDataDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No notifyUserSelection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; set:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-boolean v5, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcMobileDataDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to invoke notifyUserSelection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; set:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-boolean v5, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcMobileDataDialog"

    const-string v6, "ConnMgr is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDataRoamingEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unlockPersistWriteProtection()V
    .locals 3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_ct_data_roaming_warning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->ensureMobileDataObjects()V

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->persistMobileDataSettingEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->ensureMobileDataObjects()V

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->persistMobileDataSettingEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->ensureMobileDataObjects()V

    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandler:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {v0}, Landroid/net/HtcMobileNetworkEngine;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    :goto_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "HtcMobileDataDialog"

    const-string v1, "mHtcMobileNetworkEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mReceiver:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mReceiver:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mReceiver:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 14

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onResume()V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mReceiver:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mWhich:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mOrientation:I

    const v10, 0x7f0c039a

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0c03ae

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v1, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "type"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDialogType:I

    iget v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDialogType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "CDMA_DATA_ERROR_CODE_IN_STRING"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v10, v5

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_0
    :goto_0
    const-string v10, "HtcMobileDataDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DialogType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDialogType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDialogType:I

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x104000a

    invoke-virtual {v10, v11, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c00a6

    invoke-virtual {v10, v11, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    if-eqz v10, :cond_a

    const-string v10, "HtcMobileDataDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enble state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {v12}, Landroid/net/HtcMobileNetworkEngine;->getEnableState()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHtcMobileNetworkEngine:Landroid/net/HtcMobileNetworkEngine;

    invoke-virtual {v10}, Landroid/net/HtcMobileNetworkEngine;->getEnableState()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v6

    const-string v10, "HtcMobileDataDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "CDMA_DATA_ERROR_CODE_IN_STRING"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "HtcMobileDataDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v10, "HtcMobileDataDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "CDMA_DATA_ERROR_CODE_IN_STRING"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    const v10, 0x7f0c03b3

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v10

    if-eqz v10, :cond_3

    const v10, 0x7f0c03b8

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x104000a

    iget-object v12, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDataroamingConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c00a6

    iget-object v12, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDataroamingConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const v10, 0x7f0c03b7

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :pswitch_2
    const v10, 0x7f0c03af

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    if-gt v2, v10, :cond_4

    const/4 v10, -0x1

    if-le v3, v10, :cond_7

    :cond_4
    const-string v10, "LTE:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    if-le v3, v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ESM-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_5
    const/4 v10, -0x1

    if-le v2, v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " EMM-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_6
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_7
    const/4 v10, -0x1

    if-le v1, v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EHRPD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_8
    const/4 v10, -0x1

    if-le v4, v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MIP: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_9
    const-string v10, "HtcMobileDataDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "err:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v12, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$3;

    invoke-direct {v12, p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$3;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "CDMA_DATA_ERROR_CODE_IS_SHOWING"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :pswitch_3
    iget-object v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandler:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v7, Landroid/content/IntentFilter;

    const-string v10, "com.htc.intent.ACTION_WIFI_DISCONNECT_NOTIFY_USER_SELECT"

    invoke-direct {v7, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;)V

    iput-object v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mReceiver:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

    iget-object v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mReceiver:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandler:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;

    invoke-virtual {p0, v10, v7, v11, v12}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v10, "power"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mPowerManager:Landroid/os/PowerManager;

    const-string v10, "keyguard"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/KeyguardManager;

    iput-object v10, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const v10, 0x7f0c03b9

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0c03ba

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x104000a

    iget-object v12, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandoffConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c00a6

    iget-object v12, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandoffConfirmListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    const-string v10, "HtcMobileDataDialog"

    const-string v11, "mHtcMobileNetworkEngine is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onStop()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onStop()V

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "HtcMobileDataDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mKeyguardManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const-string v0, "HtcMobileDataDialog"

    const-string v1, "onStop by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mWhich:I

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->persistMobileDataSettingEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->notifyUserSelection(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CDMA_DATA_ERROR_CODE_IS_SHOWING"

    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public persistMobileDataSettingEnabled(Z)V
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    return-void
.end method
