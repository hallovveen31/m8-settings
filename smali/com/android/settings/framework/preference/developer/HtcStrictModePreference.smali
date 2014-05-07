.class public final Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcStrictModePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "HTC_STRICT_MODE_SETTING"

.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "strict_mode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInitialized:Z

.field protected mValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->mInitialized:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->mValueMap:Ljava/util/HashMap;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->initialize(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->mInitialized:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->mValueMap:Ljava/util/HashMap;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->initialize(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v5, 0x7f0c11ef

    const/4 v6, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 66
    const-string v4, "HTC_STRICT_MODE_SETTING"

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setKey(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setTitle(I)V

    .line 69
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setDialogTitle(I)V

    .line 71
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->mWindowManager:Landroid/view/IWindowManager;

    .line 74
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setPersistent(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f0800ba

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, entries:[Ljava/lang/String;
    const v4, 0x7f0800b9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "strict_mode"

    invoke-static {v4, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 86
    .local v2, value:I
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setValue(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 101
    .local v2, value:I
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v2, :cond_2

    const-string v3, ""

    :goto_0
    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "strict_mode"

    invoke-static {v3, v4, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    const-string v3, "persist.sys.strictmode.profile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "persist.sys.strictmode.visual"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    sget-object v3, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->TAG:Ljava/lang/String;

    const-string v4, "currentStrictModeActiveIndex: 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setValue(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    .end local v2           #value:I
    :cond_1
    return-void

    .line 101
    .restart local v2       #value:I
    :cond_2
    :try_start_1
    const-string v3, "1"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->TAG:Ljava/lang/String;

    const-string v4, " ERROR: Write Strict Mode Visual Profile Fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v3, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 115
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v3, "persist.sys.strictmode.visual"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 116
    .local v1, enabled:Z
    sget-object v4, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentStrictModeActiveIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    goto :goto_3
.end method
