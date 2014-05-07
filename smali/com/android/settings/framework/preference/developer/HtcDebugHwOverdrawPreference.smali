.class public Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcDebugHwOverdrawPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, entries:[Ljava/lang/String;
    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f080059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, values:[Ljava/lang/String;
    return-object v1
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "debug_hw_overdraw"

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    const-string v1, "debug.hwui.overdraw"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 78
    if-nez p1, :cond_0

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 88
    :goto_0
    return-object v2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 83
    .local v1, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 84
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 93
    const-string v0, "debug.hwui.overdraw"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;->pokeSystemProperties()V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/util/HtcSystemPropertyPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method
