.class public Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcHdcpCheckPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/preference/developer/HtcAppProcessLimitPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getCustomDialogTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, entries:[Ljava/lang/String;
    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f080048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, values:[Ljava/lang/String;
    return-object v1
.end method

.method protected getCustomSummary(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "indexOfEntries"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, summaries:[Ljava/lang/String;
    aget-object v1, v0, p1

    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    const-string v0, "persist.sys.hdcp_checking"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "value"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 117
    const-string v0, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcHdcpCheckPreference;->pokeSystemProperties()V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method
