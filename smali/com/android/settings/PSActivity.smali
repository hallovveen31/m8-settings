.class public Lcom/android/settings/PSActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "PSActivity.java"


# static fields
.field public static final Closing_all:Ljava/lang/String; = "closing_all"

.field public static final DIALOG_HandShakeOK:I = 0x2

.field public static final DIALOG_Notice:I = 0x3

.field public static final DIALOG_Trigger:I = 0x1

.field public static final HasSPCSC:Ljava/lang/String; = "has_spcsc"

.field public static final IPTConnPass:Ljava/lang/String; = "ipt_connectpass"

.field public static final KEY_PS_DIALOG:Ljava/lang/String; = "ps_dialog_code"

.field public static final KGUARD_LOCKED:Ljava/lang/String; = "kguard_locked"

.field public static final MDM_Tethering:Ljava/lang/String; = "mdm_Tethering"

.field public static final MDM_USB:Ljava/lang/String; = "mdm_usb"

.field public static final MLINK_Enabled:Ljava/lang/String; = "mlink_enabled"

.field public static final ModemEnabled:Ljava/lang/String; = "modem_enabled"

.field public static final NotShowNotice:Ljava/lang/String; = "notshow_notice"

.field public static final PCConnPass:Ljava/lang/String; = "pc_connectpass"

.field public static final PCNetwork:Ljava/lang/String; = "pc_network"

.field public static final PSEnabled:Ljava/lang/String; = "ps_enabled"

.field public static final RetryTethering:Ljava/lang/String; = "retry_tethering"

.field public static final SNS_NONE_Closing:Ljava/lang/String; = "sns_closing"

.field public static final SNS_Position:Ljava/lang/String; = "sns_position"

.field public static final SNS_PreType:Ljava/lang/String; = "sns_pre_type"

.field public static final SNS_Type:Ljava/lang/String; = "sns_type"

.field public static final SP_FILE:Ljava/lang/String; = "WirelessSettings"

.field public static final SmartPCSC:Ljava/lang/String; = "smart_pcsc"

.field public static final Storage_PrevType:Ljava/lang/String; = "storage_prev_type"

.field public static final Tag:Ljava/lang/String; = "PSReceiver_PSActivity"

.field public static final TriggerFromIPT_UI:Ljava/lang/String; = "trigger_from_ipt_ui"

.field public static final TriggerNCM:Ljava/lang/String; = "com.htc.net.usbnet.MODE_NCM"

.field public static final Trigger_NO:Ljava/lang/String; = "com.htc.InternetPS.TriggerNO"

.field public static final Trigger_OK:Ljava/lang/String; = "com.htc.InternetPS.TriggerOK"

.field private static hasRegistered:Z


# instance fields
.field private DBG:Z

.field ed:Landroid/content/SharedPreferences$Editor;

.field mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/PSActivity;->hasRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    iput-object v1, p0, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PSActivity;->DBG:Z

    iput-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/android/settings/PSActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PSActivity$1;-><init>(Lcom/android/settings/PSActivity;)V

    iput-object v0, p0, Lcom/android/settings/PSActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    new-instance v0, Lcom/android/settings/PSActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/PSActivity$6;-><init>(Lcom/android/settings/PSActivity;)V

    iput-object v0, p0, Lcom/android/settings/PSActivity;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PSActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/PSActivity;->DBG:Z

    return v0
.end method


# virtual methods
.method public ShowNoticeDlg()V
    .locals 6

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f040067

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    sget-boolean v4, Lcom/android/settings/PSService;->Notshow_notice:Z

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    new-instance v4, Lcom/android/settings/PSActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/PSActivity$3;-><init>(Lcom/android/settings/PSActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0900d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v4, Lcom/android/settings/PSActivity$4;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/PSActivity$4;-><init>(Lcom/android/settings/PSActivity;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v4, 0x7f0c074c

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v4, 0x2040151

    new-instance v5, Lcom/android/settings/PSActivity$5;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/PSActivity$5;-><init>(Lcom/android/settings/PSActivity;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/settings/PSActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v4, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public ShowPSTriggerDlg()V
    .locals 3

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0748

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v1, 0x7f0c0749

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v1, 0x2040151

    new-instance v2, Lcom/android/settings/PSActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PSActivity$2;-><init>(Lcom/android/settings/PSActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/settings/PSActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    const-string v1, "WirelessSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PSActivity;->sp:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/settings/PSActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PSActivity;->ed:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    iget-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/PSActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    sget-boolean v1, Lcom/android/settings/PSActivity;->hasRegistered:Z

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "PSReceiver_PSActivity"

    const-string v2, "Unregister receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/PSActivity;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/PSActivity;->hasRegistered:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ps_dialog_code"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/settings/PSActivity;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PSReceiver_PSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialog code= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PSReceiver_PSActivity"

    const-string v4, "unplugged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    packed-switch v0, :pswitch_data_0

    iget-boolean v3, p0, Lcom/android/settings/PSActivity;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "PSReceiver_PSActivity"

    const-string v4, "Unknown dialog code"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    :pswitch_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.htc.usb.change"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/PSActivity;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.htc.permission.APP_PLATFORM"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/settings/PSActivity;->hasRegistered:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/PSActivity;->ShowPSTriggerDlg()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/PSActivity;->ShowNoticeDlg()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
