.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;,
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;
    }
.end annotation


# static fields
.field static final APPLICATIONS:I = 0x1

.field static final AVAILABLE:I = 0x6

.field static final DCIM:I = 0x2

.field static final DOWNLOADS:I = 0x4

.field static final MISC:I = 0x5

.field private static final MSG_UI_UPDATE_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_EXACT:I = 0x2

.field static final MUSIC:I = 0x3

.field static final TOTAL_SIZE:I

.field static final sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

.field static final sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

.field public static final sPathsExcludedForMisc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowFormat:Z

.field private mColors:[I

.field private mFormatPreference:Lcom/htc/preference/HtcPreference;

.field private mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Lcom/htc/preference/HtcPreference;

.field private mPreferences:[Lcom/htc/preference/HtcPreference;

.field private mResources:Landroid/content/res/Resources;

.field private mStorageLow:Lcom/htc/preference/HtcPreference;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0c0e6a

    invoke-direct {v1, v2, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0c0e6c

    const v3, 0x7f0b0004

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0c0e6f

    const v3, 0x7f0b0006

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0c0e70

    const v3, 0x7f0b0007

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0c0e6e

    const v3, 0x7f0b0005

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0c0e71

    const v4, 0x7f0b0009

    invoke-direct {v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0c0e68

    const v4, 0x7f0b0003

    invoke-direct {v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    new-array v0, v6, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {v1, v6, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v3, v2, v8

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-direct {v1, v8, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1, p3, p5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    if-nez p5, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0c0f85

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private measure()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    return-void
.end method

.method private resetPreferences()V
    .locals 4

    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v1, v2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    return-void
.end method

.method private updatePreference(JJI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v0, v0, p5

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v2, v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v0, v0, p5

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 8

    const v4, 0x7f0c0e76

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x6

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v0, ""

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "mounted"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0b3e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_2
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v2, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0e73

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0e74

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v1, "mounted"

    goto/16 :goto_0

    :cond_5
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0e77

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0e75

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 9

    new-instance v6, Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const/high16 v7, 0x7f0e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0e0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    sget-object v6, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v2, v6

    new-array v6, v2, [Lcom/htc/preference/HtcPreference;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    new-array v6, v2, [I

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aput-object v4, v6, v1

    sget-object v6, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const v6, 0x7f0c0e6b

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget-object v8, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v6, v1

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v6, v6, v1

    invoke-static {v5, v0, v6}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0c0e73

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0c0e74

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    if-eqz v6, :cond_2

    new-instance v6, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0c0e78

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0c0e79

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Lcom/htc/preference/HtcPreference;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0c0e84

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Lcom/htc/preference/HtcPreference;

    const v7, 0x7f0c0e85

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_1
    return-void

    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Lcom/htc/preference/HtcPreference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public intentForClick(Lcom/htc/preference/HtcPreference;)Landroid/content/Intent;
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/MediaFormat;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "storage_volume"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v2, v2, v4

    if-ne p1, v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "audio/mp3"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMiscSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "storage_volume"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public mountToggleClicked(Lcom/htc/preference/HtcPreference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Lcom/htc/preference/HtcPreference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMediaScannerFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    sub-long v0, p1, p3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v3, v0

    long-to-float v4, p1

    div-float/2addr v3, v4

    const v4, -0x777778

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    return-void
.end method

.method public updateApproximate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateExact(JJJJJ[J)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->isExternalSDCard()Z

    move-result v2

    if-eqz v2, :cond_0

    sub-long v17, p1, p3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-wide/from16 v0, v17

    long-to-float v5, v0

    move-wide/from16 v0, p1

    long-to-float v6, v0

    div-float/2addr v5, v6

    const v6, -0x777778

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    :cond_0
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    const-wide/16 v15, 0x0

    const/4 v14, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v2, v2

    if-ge v14, v2, :cond_1

    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v2, v2, v14

    iget v7, v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mCategory:I

    aget-wide v3, p11, v14

    move-object/from16 v2, p0

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    add-long/2addr v15, v3

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x4

    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    const/4 v13, 0x5

    move-object/from16 v8, p0

    move-wide/from16 v9, p9

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    const/4 v13, 0x6

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    return-void
.end method

.method public updateExact(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
