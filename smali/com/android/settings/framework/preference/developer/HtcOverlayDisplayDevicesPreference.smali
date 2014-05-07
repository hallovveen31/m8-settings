.class public Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcOverlayDisplayDevicesPreference.java"


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
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 32
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
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, entries:[Ljava/lang/String;
    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f080051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, values:[Ljava/lang/String;
    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c120e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "overlay_display_devices"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, value:Ljava/lang/String;
    goto :goto_0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    :goto_0
    return-object v2

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    .local v1, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 85
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method
