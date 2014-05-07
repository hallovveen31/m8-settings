.class public Lcom/android/settings/framework/widget/HtcGridView;
.super Lcom/htc/widget/HtcGridView;
.source "HtcGridView.java"


# static fields
.field private static final NUMBER_COLUMNS_IN_LANDSCAPE:I = 0x5

.field private static final NUMBER_COLUMNS_IN_PORTRAIT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentFirstVisiblePosition:I

.field private mFirstPositionField:Ljava/lang/reflect/Field;

.field private mPreviousFirstVisiblePosition:I

.field private mRequestedNumColumnsField:Ljava/lang/reflect/Field;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/widget/HtcGridView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/widget/HtcGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/widget/HtcGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcGridView;->mUiHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/settings/framework/widget/HtcGridView;->mPreviousFirstVisiblePosition:I

    iput v2, p0, Lcom/android/settings/framework/widget/HtcGridView;->mCurrentFirstVisiblePosition:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/framework/widget/HtcGridView;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mCurrentFirstVisiblePosition:I

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcGridView;->applyHtcStyles(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/widget/HtcGridView;->adjustProperties(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/widget/HtcGridView;->adjustLayout(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected adjustLayout(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->setMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected adjustProperties(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcGridView;->enableAnimation(IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcGridView;->enableAnimation(IZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcGridView;->getNumberColumnsInLandscape()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcGridView;->getNumberColumnsInPortrait()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method protected applyHtcStyles(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v2, 0x20300c1

    sget-object v3, Landroid/R$styleable;->AbsListView:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getNumberColumnsInLandscape()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getNumberColumnsInPortrait()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/android/settings/framework/widget/HtcGridView;->mCurrentFirstVisiblePosition:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcGridView;->setFirstPositionProperty(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mPreviousFirstVisiblePosition:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcGridView;->getNumberColumnsInLandscape()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcGridView;->setNumColumnsProperty(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/framework/widget/HtcGridView$1;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/widget/HtcGridView$1;-><init>(Lcom/android/settings/framework/widget/HtcGridView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/framework/widget/HtcGridView;->mPreviousFirstVisiblePosition:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcGridView;->getNumberColumnsInPortrait()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcGridView;->setNumColumnsProperty(I)V

    goto :goto_1
.end method

.method public setFirstPositionProperty(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mFirstPositionField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const-class v1, Landroid/widget/AdapterView;

    const-string v2, "mFirstPosition"

    invoke-static {v1, v2}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mFirstPositionField:Ljava/lang/reflect/Field;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mFirstPositionField:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/framework/widget/HtcGridView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke setFirstPositionProperty("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNumColumnsProperty(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mRequestedNumColumnsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const-class v1, Landroid/widget/GridView;

    const-string v2, "mRequestedNumColumns"

    invoke-static {v1, v2}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mRequestedNumColumnsField:Ljava/lang/reflect/Field;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcGridView;->mRequestedNumColumnsField:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/framework/widget/HtcGridView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke setNumColumnsProperty("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
