.class public Lcom/android/settings/ISActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "ISActivity.java"


# static fields
.field public static final DIALOG_CODE_HOTSPOT:I = 0x3

.field public static final DIALOG_CODE_MHS_PROGRESS:I = 0x8

.field public static final DIALOG_CODE_MISC_CONFIG:I = 0x5

.field public static final DIALOG_CODE_MOBILE:I = 0x1

.field public static final DIALOG_CODE_MOBILE_TYPE:I = 0x4

.field public static final DIALOG_CODE_MODEMLINK:I = 0x2

.field public static final DIALOG_CODE_MODEMLINK_NOCDROM:I = 0x6

.field public static final DIALOG_CODE_WARNING_ACG:I = 0x7

.field public static final DIALOG_CODE_WARNING_MOBILE:I = 0x9

.field public static final DIALOG_CODE_WARNING_TMOUS:I = 0xa

.field public static final KEY_IS_DIALOG:Ljava/lang/String; = "is_dialog_code"

.field public static final TAG:Ljava/lang/String; = "NetSharing_ISActivity"

.field public static final TETHERING_CHECKBOX_TMOUS:Ljava/lang/String; = "tethering_checkbox_tmous"

.field protected static isShowing:Z


# instance fields
.field private Type:I

.field private code:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ISActivity;->isShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    .line 72
    iput-object v1, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 73
    iput v0, p0, Lcom/android/settings/ISActivity;->code:I

    .line 74
    iput v0, p0, Lcom/android/settings/ISActivity;->Type:I

    .line 89
    new-instance v0, Lcom/android/settings/ISActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ISActivity$1;-><init>(Lcom/android/settings/ISActivity;)V

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 505
    new-instance v0, Lcom/android/settings/ISActivity$16;

    invoke-direct {v0, p0}, Lcom/android/settings/ISActivity$16;-><init>(Lcom/android/settings/ISActivity;)V

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ISActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/ISActivity;->code:I

    return v0
.end method

.method private showConfigDialog()V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Problem"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const-string v1, "Radio flag is wrong. need to reboot to the right mode"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/android/settings/ISActivity$8;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$8;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 248
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 251
    return-void
.end method

.method private showMobileDialog()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c051f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0520

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0521

    new-instance v2, Lcom/android/settings/ISActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$3;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0517

    new-instance v2, Lcom/android/settings/ISActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$2;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 164
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 166
    return-void
.end method

.method private showMobileTypeDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0522

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0c0524

    invoke-virtual {p0, v2}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f0c052b

    invoke-virtual {p0, v3}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/android/settings/ISActivity;->Type:I

    new-instance v3, Lcom/android/settings/ISActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/ISActivity$7;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0517

    new-instance v2, Lcom/android/settings/ISActivity$6;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$6;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 227
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 230
    return-void
.end method

.method private showModemDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 126
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5}, Landroid/content/BroadcastReceiver;->setDebugUnregister(Z)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.APP_PLATFORM"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/settings/ISActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    const/4 v2, 0x0

    invoke-static {v2, p0}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 132
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 134
    const v2, 0x7f0c052f

    invoke-virtual {p0, v2}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    const v2, 0x7f0c0538

    invoke-virtual {p0, v2}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v0, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 137
    invoke-virtual {v0, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 140
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 141
    return-void
.end method

.method private showProgressDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 316
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.APP_PLATFORM"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/settings/ISActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 320
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 321
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 322
    const v2, 0x7f0c0541

    invoke-virtual {p0, v2}, Lcom/android/settings/ISActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v0, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 324
    invoke-virtual {v0, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 325
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 326
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 327
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 329
    return-void
.end method

.method private showWarningDialog()V
    .locals 5

    .prologue
    .line 256
    const v2, 0x7f040069

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 258
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    .local v0, content:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0529

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 262
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 265
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0528

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0516

    new-instance v4, Lcom/android/settings/ISActivity$10;

    invoke-direct {v4, p0}, Lcom/android/settings/ISActivity$10;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0517

    new-instance v4, Lcom/android/settings/ISActivity$9;

    invoke-direct {v4, p0}, Lcom/android/settings/ISActivity$9;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 293
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 294
    iget-object v2, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 295
    return-void
.end method

.method private showWarningDialog_ACG()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 335
    const-string v0, "internet_sharing_acg"

    .line 336
    .local v0, SP_FILE_ACG:Ljava/lang/String;
    const-string v1, "once_acg"

    .line 338
    .local v1, SP_KEY_ACG:Ljava/lang/String;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 339
    .local v4, filter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {p0, v6, v4, v7, v8}, Lcom/android/settings/ISActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 342
    const v6, 0x7f040068

    invoke-static {p0, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 343
    .local v5, layout:Landroid/view/View;
    const v6, 0x7f0900d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    .line 345
    .local v3, checkbox:Lcom/htc/widget/HtcCheckBox;
    const-string v6, "NetSharing_ISActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shared Preferences include:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v9, "internet_sharing_acg"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "once_acg"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v6, "NetSharing_ISActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkbox:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v9, "internet_sharing_acg"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "internet_sharing_acg"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const v6, 0x7f0900d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 349
    .local v2, askText:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 350
    new-instance v6, Lcom/android/settings/ISActivity$12;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/ISActivity$12;-><init>(Lcom/android/settings/ISActivity;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v7, "internet_sharing_acg"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "once_acg"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v7, "internet_sharing_acg"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "once_acg"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 362
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v7, "internet_sharing_acg"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "once_acg"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 364
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c03a1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c052e

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0516

    new-instance v8, Lcom/android/settings/ISActivity$13;

    invoke-direct {v8, p0, v3}, Lcom/android/settings/ISActivity$13;-><init>(Lcom/android/settings/ISActivity;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 381
    iget-object v6, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    iget-object v6, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->finish()V

    goto :goto_0
.end method

.method private showWarningDialog_TMOUS()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 394
    const-string v0, "internet_sharing_tmous"

    .line 395
    .local v0, SP_FILE_TMOUS:Ljava/lang/String;
    const-string v1, "once_tmous"

    .line 399
    .local v1, SP_KEY_TMOUS:Ljava/lang/String;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.htc.permission.APP_PLATFORM"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v2, v5, v6}, Lcom/android/settings/ISActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 402
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x2040328

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0559

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c076d

    invoke-virtual {p0, v5}, Lcom/android/settings/ISActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/ISActivity$15;

    invoke-direct {v6, p0}, Lcom/android/settings/ISActivity$15;-><init>(Lcom/android/settings/ISActivity;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCheckBox(Ljava/lang/CharSequence;ZLcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c00a5

    new-instance v6, Lcom/android/settings/ISActivity$14;

    invoke-direct {v6, p0}, Lcom/android/settings/ISActivity$14;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 427
    .local v3, mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 428
    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 432
    return-void
.end method


# virtual methods
.method public HotspotWarningDialog()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c053d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c053e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b43

    new-instance v2, Lcom/android/settings/ISActivity$5;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$5;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b44

    new-instance v2, Lcom/android/settings/ISActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$4;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 196
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 198
    return-void
.end method

.method public NoCDRomWarningDialog()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c053f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0540

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b43

    new-instance v2, Lcom/android/settings/ISActivity$11;

    invoke-direct {v2, p0}, Lcom/android/settings/ISActivity$11;-><init>(Lcom/android/settings/ISActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ISActivity;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    .line 309
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 311
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0f0088

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 86
    iput-object p0, p0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 499
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onDestroy()V

    .line 501
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 484
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onPause()V

    .line 486
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ISActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/settings/ISActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->finish()V

    .line 493
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ISActivity;->isShowing:Z

    .line 495
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 438
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onResume()V

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 440
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_dialog_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ISActivity;->code:I

    .line 443
    iget v1, p0, Lcom/android/settings/ISActivity;->code:I

    packed-switch v1, :pswitch_data_0

    .line 477
    const-string v1, "NetSharing_ISActivity"

    const-string v2, "unknown dialog code"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-void

    .line 446
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showMobileDialog()V

    goto :goto_0

    .line 449
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showModemDialog()V

    goto :goto_0

    .line 452
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->HotspotWarningDialog()V

    goto :goto_0

    .line 455
    :pswitch_3
    const-string v1, "internet_sharing"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/ISActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "is_type"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ISActivity;->Type:I

    .line 456
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showMobileTypeDialog()V

    goto :goto_0

    .line 459
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showConfigDialog()V

    goto :goto_0

    .line 462
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showWarningDialog()V

    goto :goto_0

    .line 465
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/ISActivity;->NoCDRomWarningDialog()V

    goto :goto_0

    .line 468
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showProgressDialog()V

    goto :goto_0

    .line 471
    :pswitch_8
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showWarningDialog_ACG()V

    goto :goto_0

    .line 474
    :pswitch_9
    invoke-direct {p0}, Lcom/android/settings/ISActivity;->showWarningDialog_TMOUS()V

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
