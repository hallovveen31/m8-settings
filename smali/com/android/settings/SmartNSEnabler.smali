.class public Lcom/android/settings/SmartNSEnabler;
.super Ljava/lang/Object;
.source "SmartNSEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmartNSEnabler$WarningDialog;,
        Lcom/android/settings/SmartNSEnabler$UsbListAdapter;
    }
.end annotation


# static fields
.field private static final ALL_Enabled:I = 0x2

.field private static final ATS_Disabled:I = 0xe

.field private static final ATS_Enabled:I = 0xf

.field private static final EAS_Forbid:I = 0x10

.field private static final ICM_Connecting:I = 0xd

.field private static final ICM_Enabled:I = 0xc

.field public static final INTERNET_CONNECTION_MODE:I = 0x4

.field public static final INTERNET_PASS_THROUGH:I = 0x3

.field private static final IPT_Closing:I = 0xb

.field private static final IPT_Connecting:I = 0xa

.field private static final IPT_Enabled:I = 0x9

.field private static final IS_Closing:I = 0x8

.field private static final IS_Connecting:I = 0x7

.field private static final IS_Enabled:I = 0x6

.field private static final MDM_Forbid:I = 0x13

.field private static final MDM_Permit:I = 0x14

.field public static final MIRROR_LINK:I = 0x6

.field private static final MLINK_Connecting:I = 0x12

.field private static final MLINK_Enabled:I = 0x11

.field private static final MSG_NONE:I = 0x0

.field private static final MSG_NONE_Closing:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NONE_UI_CLOSING:Ljava/lang/String; = "com.htc.android.sns_none.closing"

.field public static final PC_MODEM:I = 0x5

.field public static final SMART_NETWORK_SHARING:I = 0x1

.field private static final SNS_Closing:I = 0x5

.field private static final SNS_Connecting:I = 0x4

.field private static final SNS_Enabled:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SmartNS_Enabler"

.field public static final USB_TETHERING:I = 0x2

.field public static alive:Z = false

.field private static blockFromMDM:Z = false

.field private static blockFromThreeLM:Z = false

.field private static default_position:I = 0x0

.field private static disabled_UI_ATS:Z = false

.field protected static hasTethered:Z = false

.field protected static isClosing:Z = false

.field protected static isICMOpening:Z = false

.field private static isIPTConnPass:Z = false

.field protected static isMLinkOpening:Z = false

.field protected static isNSOpening:Z = false

.field private static isPSEnabled:Z = false

.field private static isUSBConnected:Z = false

.field protected static final mHasSpcsc:Ljava/lang/String; = "has_spcsc"

.field protected static final mSmartNSAuto:Ljava/lang/String; = "usb_tethering_auto_enable"

.field private static pause:Landroid/os/ConditionVariable;

.field protected static requestMHS:Z

.field private static runSmartPCSC:Z


# instance fields
.field private button_id:I

.field item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private items:[Ljava/lang/String;

.field private list:Lcom/htc/widget/HtcListView;

.field private mApnDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mApnSelectedIndex:I

.field private mChargeOnlyFilter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDunNameItems:[Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mNameArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSNSEnabler:Lcom/htc/preference/HtcPreference;

.field private mTypeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SmartNSEnabler;->default_position:I

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->isUSBConnected:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->isPSEnabled:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->isIPTConnPass:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->isClosing:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->isICMOpening:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->isMLinkOpening:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->hasTethered:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->runSmartPCSC:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->alive:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->disabled_UI_ATS:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->blockFromThreeLM:Z

    sput-boolean v0, Lcom/android/settings/SmartNSEnabler;->blockFromMDM:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/settings/SmartNSEnabler;->pause:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/settings/SmartNSEnabler;->button_id:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mNameMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mChargeOnlyFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/SmartNSEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$2;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SmartNSEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$3;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/SmartNSEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$4;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mDunNameItems:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.ipt.enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.ipt.disabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.opening_IPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.enableIS.UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.openingIS.UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.smartPCSC.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.smartPCSC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.startIS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.enableICM.UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.openingICM.UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.ats.usbui.DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.sns_none.closing"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.USB_HTC_CARMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.enableMLINK.UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.openingMLINK.UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.mdm.usb.intent.MDM_USB_ALLOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mChargeOnlyFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mChargeOnlyFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.settings.action.CHARGE_ONLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    const-string v1, "WirelessSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/settings/SmartNSEnabler;->initUI()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SmartNSEnabler;->disabled_UI_ATS:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SmartNSEnabler;->isIPTConnPass:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SmartNSEnabler;->isIPTConnPass:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SmartNSEnabler;->disabled_UI_ATS:Z

    return p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SmartNSEnabler;->runSmartPCSC:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SmartNSEnabler;->runSmartPCSC:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mApnDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/android/settings/SmartNSEnabler;->pause:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SmartNSEnabler;->blockFromThreeLM:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SmartNSEnabler;->blockFromThreeLM:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SmartNSEnabler;->blockFromMDM:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SmartNSEnabler;->blockFromMDM:Z

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/settings/SmartNSEnabler;->default_position:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    sput p0, Lcom/android/settings/SmartNSEnabler;->default_position:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SmartNSEnabler;->isUSBConnected:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SmartNSEnabler;->isUSBConnected:Z

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SmartNSEnabler;->isPSEnabled:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SmartNSEnabler;->isPSEnabled:Z

    return p0
.end method

.method private initUI()V
    .locals 9

    const v3, 0x7f0c050e

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v5, "usb_tethering_auto_enable"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v5, "has_spcsc"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "usb_tethering_auto_enable"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v4, "SmartNS_Enabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasSmartPCSC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "sns_type"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "sns_position"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v5, "customizedNS"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v5, "customizedML"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v5, "customizedIPT"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/HtcFeatureList;->hasMirrorLink(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    const v6, 0x2040260

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f0c074f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v5, "customizedNS"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v5, "customizedML"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v3, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v4, "customizedIPT"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0746

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v3, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/HtcFeatureList;->hasMirrorLink(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0550

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v3, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v4, "sns_type"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/settings/SmartNSEnabler;->default_position:I

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    sget v5, Lcom/android/settings/SmartNSEnabler;->default_position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v3, p0, Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v4, 0x7f0c0752

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(I)V

    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "sns_type"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "sns_position"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_a
    const v1, 0x7f0c050d

    goto/16 :goto_1
.end method

.method protected static waitIPTClose(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string v2, "WirelessSettings"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :goto_0
    const-string v2, "ps_enabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    const-string v2, "SmartNS_Enabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait IPT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/SmartNSEnabler;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected closeAll()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SmartNS_Enabler"

    const-string v1, "Close all tethering functions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mlink_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    :cond_1
    new-instance v0, Lcom/android/settings/SmartNSEnabler$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$5;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected enableInternetConnectionMode()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SmartNS_Enabler"

    const-string v1, "enable Internet Connection Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mlink_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    :cond_2
    new-instance v0, Lcom/android/settings/SmartNSEnabler$10;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$10;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected enableInternetPassThrough()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SmartNS_Enabler"

    const-string v1, "enable Internet pass-through"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ps_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mlink_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Lcom/android/settings/SmartNSEnabler$9;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$9;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected enableMirrorLink()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mlink_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/SmartNSEnabler$12;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$12;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected enablePCModem()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SmartNS_Enabler"

    const-string v1, "enable PC modem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "startCTModem"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mlink_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    :cond_2
    new-instance v0, Lcom/android/settings/SmartNSEnabler$11;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$11;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected enableSmartNS()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "hasTethered"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "isNSOpening"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ps_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "startCTModem"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mlink_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/android/settings/SmartNSEnabler;->closeAll()V

    new-instance v0, Lcom/android/settings/SmartNSEnabler$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$6;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected enableTethering()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const-string v0, "SmartNS_Enabler"

    const-string v1, "enable Tethering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "hasTethered"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "isNSOpening"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_checkbox_tmous"

    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mlink_enabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    :cond_3
    new-instance v0, Lcom/android/settings/SmartNSEnabler$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNSEnabler$7;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected enableTetheringWithApn()V
    .locals 4

    const-string v0, "SmartNS_Enabler"

    const-string v1, "enable TetheringWithApn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/SmartNSUtility;->getSelectedDunIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SmartNSEnabler;->mApnSelectedIndex:I

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->getDunItems()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mDunNameItems:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mDunNameItems:[Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c076e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mDunNameItems:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/SmartNSEnabler;->mApnSelectedIndex:I

    new-instance v3, Lcom/android/settings/SmartNSEnabler$8;

    invoke-direct {v3, p0}, Lcom/android/settings/SmartNSEnabler$8;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mApnDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler;->mApnDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SmartNS_Enabler"

    const-string v1, "APN dialog not displayed due to no dun item."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SmartNS_Enabler"

    const-string v1, "APN dialog not displayed due to operator numeric is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SmartNSEnabler;->enableTethering()V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mApnDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mApnDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const-string v1, "SmartNS_Enabler"

    const-string v2, "Dismiss apn dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcom/android/settings/SmartNSEnabler;->alive:Z

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/SmartNSEnabler;->alive:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SmartNS_Enabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when dismiss apn dialog :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public resume()V
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "SmartNS_Enabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasNS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v11, "customizedNS"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hasML:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v11, "customizedML"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v6, Lcom/htc/widget/HtcListView;

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    const v9, 0x203009c

    sget-object v10, Lcom/android/settings/R$styleable;->ListView:[I

    invoke-virtual {v6, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;

    new-instance v9, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;

    iget-object v10, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    const v11, 0x7f06004e

    invoke-direct {v9, p0, v10, v11, v3}, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;-><init>(Lcom/android/settings/SmartNSEnabler;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    new-instance v9, Lcom/android/settings/SmartNSEnabler$1;

    invoke-direct {v9, p0}, Lcom/android/settings/SmartNSEnabler$1;-><init>(Lcom/android/settings/SmartNSEnabler;)V

    invoke-virtual {v6, v9}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    sput-boolean v8, Lcom/android/settings/SmartNSEnabler;->alive:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/settings/SmartNSEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v11, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/settings/SmartNSEnabler;->mChargeOnlyFilter:Landroid/content/IntentFilter;

    const-string v11, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->isUSBConnected:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "ps_enabled"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->isPSEnabled:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "ipt_connectpass"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->isIPTConnPass:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "isNSOpening"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "isMLinkOpening"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->isMLinkOpening:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "requestMHS"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "isICMOpening"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->isICMOpening:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "hasTethered"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->hasTethered:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "smart_pcsc"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->runSmartPCSC:Z

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "sns_type"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    sput v6, Lcom/android/settings/SmartNSEnabler;->default_position:I

    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->hasTethered:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isPSEnabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v9, "sns_closing"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/HtcIfDevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    invoke-interface {v6, v12}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_5

    sput-boolean v7, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    :goto_0
    const-string v6, "SmartNS_Enabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EAS Allow IS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "mdm_Tethering"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v9, "mdm_usb"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_2
    move v6, v8

    :goto_1
    sput-boolean v6, Lcom/android/settings/SmartNSEnabler;->blockFromMDM:Z

    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isUSBConnected:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;

    sget v9, Lcom/android/settings/SmartNSEnabler;->default_position:I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_2
    :pswitch_0
    sget-boolean v6, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->blockFromMDM:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void

    :cond_5
    sput-boolean v8, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    goto :goto_0

    :cond_6
    move v6, v7

    goto :goto_1

    :pswitch_1
    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isClosing:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :pswitch_2
    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->runSmartPCSC:Z

    if-nez v6, :cond_8

    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    if-nez v6, :cond_8

    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :pswitch_3
    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    if-eqz v6, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :pswitch_4
    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isPSEnabled:Z

    if-ne v6, v8, :cond_c

    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isIPTConnPass:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_c
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :pswitch_5
    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isICMOpening:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_d
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :pswitch_6
    sget-boolean v6, Lcom/android/settings/SmartNSEnabler;->isMLinkOpening:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_f
    iget-object v6, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
