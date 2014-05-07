.class public Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;
.super Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;
.source "HtcAppsStatisticPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method private supportGotoSdCardTab(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z
    .locals 2
    .parameter "volume"

    .prologue
    .line 160
    invoke-static {p1}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getAppsType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getAppsType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NON_FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected canSelectable()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected getColorBarColorTint()I
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->getAppsColor()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0c02ce

    return v0
.end method

.method protected onClick()V
    .locals 5

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->getStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    .line 136
    .local v2, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->supportGotoSdCardTab(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z

    move-result v1

    .line 138
    .local v1, support:Z
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    const-string v3, "supportGotoSdCardTab"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->getStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->stopGettingAppsSpace()V

    .line 102
    return-void
.end method

.method protected onGetAppsPartialSpace(J)V
    .locals 0
    .parameter "appsSize"

    .prologue
    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->onGetAppsSpace(J)V

    .line 107
    return-void
.end method

.method protected onGetAppsSpace(J)V
    .locals 0
    .parameter "appsSize"

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->setSpaceSummary(J)V

    .line 112
    return-void
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->getStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->getStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getAppsSpace()V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/storage/media/HtcAppsStatisticPreference;->TAG:Ljava/lang/String;

    const-string v1, "Forgot to call attachStorageVolume(...)"

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
