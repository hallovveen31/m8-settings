.class public Lcom/android/settings/framework/util/HtcDisplayMetrics;
.super Landroid/util/DisplayMetrics;
.source "HtcDisplayMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ENABLE_CACHE:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/util/HtcDisplayMetrics;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcDisplayMetrics;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/util/HtcDisplayMetrics;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/util/HtcDisplayMetrics;->sInstance:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics;->sInstance:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics;->sInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics;->sInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static getDisplayResolutionByTag(Landroid/content/Context;)Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;
    .locals 10

    const v3, 0x7f0c003b

    const v7, 0x7f0c003b

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->valueOf(Ljava/lang/String;)Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    move-result-object v4

    #setter for: Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mScreenDensity:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->access$002(Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v4

    :cond_0
    const-string v5, "default"

    move-object v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->UNKNOWN:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v7, Lcom/android/settings/framework/util/HtcDisplayMetrics;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->UNKNOWN:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    goto :goto_1
.end method


# virtual methods
.method public getDisplayResolution(Landroid/content/Context;)Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;
    .locals 9

    iget v5, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v0, :cond_0

    move v4, v5

    move v5, v0

    move v0, v4

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->values()[Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    move-result-object v3

    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->UNKNOWN:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const/4 v1, 0x0

    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_2

    aget-object v6, v3, v1

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->getHeight()I

    move-result v6

    if-ne v6, v0, :cond_1

    aget-object v6, v3, v1

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->getWidth()I

    move-result v6

    if-ne v6, v5, :cond_1

    aget-object v2, v3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v6, Lcom/android/settings/framework/util/HtcDisplayMetrics;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/settings/framework/util/HtcDisplayMetrics;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentDisplayResolution(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2
.end method

.method public getPhysicalScreenHeight()F
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getPhysicalScreenResolution()F
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getPhysicalScreenWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getPhysicalScreenHeight()F

    move-result v2

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    return v0
.end method

.method public getPhysicalScreenResolutionInSpec()F
    .locals 4

    const/high16 v3, 0x4120

    invoke-virtual {p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getPhysicalScreenResolution()F

    move-result v1

    mul-float v2, v1, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    sget-boolean v2, Lcom/android/settings/framework/util/HtcDisplayMetrics;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhysicalScreenResolutionInSpec()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - ro.product.display_resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.product.display_resolution"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - diagnal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public getPhysicalScreenWidth()F
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v1

    return v0
.end method
