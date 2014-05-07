.class public Lcom/android/settings/framework/widget/HtcUiStyler;
.super Ljava/lang/Object;
.source "HtcUiStyler.java"


# static fields
.field private static MARGIN_M1:I

.field private static MARGIN_M2:I

.field private static MARGIN_M3:I

.field private static MARGIN_M4:I

.field private static MARGIN_M5:I

.field private static final sContext:Landroid/content/Context;

.field private static sResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/widget/HtcUiStyler;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/framework/widget/HtcUiStyler;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/framework/widget/HtcUiStyler$1;

    invoke-direct {v2}, Lcom/android/settings/framework/widget/HtcUiStyler$1;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->initialize()V

    return-void
.end method

.method public static getListItemDivider()I
    .locals 1

    const v0, 0x7f02024b

    return v0
.end method

.method public static getListItemSeparatorTextStyles()I
    .locals 1

    const v0, 0x20300ca

    return v0
.end method

.method public static getMarginM1()I
    .locals 2

    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M1:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M1:I

    :cond_0
    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M1:I

    return v0
.end method

.method public static getMarginM2()I
    .locals 2

    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M2:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M2:I

    :cond_0
    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M2:I

    return v0
.end method

.method public static getMarginM3()I
    .locals 2

    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M3:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    const v1, 0x2050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M3:I

    :cond_0
    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M3:I

    return v0
.end method

.method public static getMarginM4()I
    .locals 2

    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M4:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    const v1, 0x2050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M4:I

    :cond_0
    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M4:I

    return v0
.end method

.method public static getMarginM5()I
    .locals 2

    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M5:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    const v1, 0x205000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M5:I

    :cond_0
    sget v0, Lcom/android/settings/framework/widget/HtcUiStyler;->MARGIN_M5:I

    return v0
.end method

.method private static initialize()V
    .locals 4

    new-instance v0, Landroid/content/res/Resources;

    sget-object v1, Lcom/android/settings/framework/widget/HtcUiStyler;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/framework/content/res/HtcAssetManager;->createAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v0, Lcom/android/settings/framework/widget/HtcUiStyler;->sResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM1()I

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM2()I

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM3()I

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM4()I

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM5()I

    return-void
.end method
