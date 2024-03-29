.class public Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;
.super Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;
.source "HtcStorageMultiColorBar.java"


# static fields
.field private static final APPS_INDEX:I = 0x0

.field private static final AVAILABLE_INDEX:I = 0x5

.field private static final DOWNLOAD_INDEX:I = 0x3

.field private static final IMAGE_AND_VIDEO_INDEX:I = 0x2

.field private static final MUSIC_INDEX:I = 0x1

.field private static final OTHER_INDEX:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static sColorSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const v2, 0x7f0b0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const v2, 0x7f0b0025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const v2, 0x7f0b0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const v2, 0x7f0b0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const v2, 0x7f0b0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const v2, 0x7f0b0029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getAppsColor()I
    .locals 2

    sget-object v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getAvailableColor()I
    .locals 2

    sget-object v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDownloadColor()I
    .locals 2

    sget-object v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getImageAndVideoColor()I
    .locals 2

    sget-object v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMusicColor()I
    .locals 2

    sget-object v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getOtherColor()I
    .locals 2

    sget-object v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getColorSet()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->sColorSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setAppsSpace(J)V
    .locals 2

    const/4 v0, 0x0

    long-to-float v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->setValue(IF)V

    return-void
.end method

.method public setDownloadSpace(J)V
    .locals 2

    const/4 v0, 0x3

    long-to-float v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->setValue(IF)V

    return-void
.end method

.method public setImageAndVideoSpace(J)V
    .locals 2

    const/4 v0, 0x2

    long-to-float v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->setValue(IF)V

    return-void
.end method

.method public setMusicSpace(J)V
    .locals 2

    const/4 v0, 0x1

    long-to-float v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->setValue(IF)V

    return-void
.end method

.method public setOtherSpace(J)V
    .locals 2

    const/4 v0, 0x4

    long-to-float v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->setValue(IF)V

    return-void
.end method
