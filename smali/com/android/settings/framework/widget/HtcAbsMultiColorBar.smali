.class public abstract Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;
.super Landroid/view/View;
.source "HtcAbsMultiColorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mColorSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mTotal:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mTotal:F

    iput-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->initial()V

    return-void
.end method

.method private initProgressBar()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initial()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->initProgressBar()V

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->initialColorSlices()V

    return-void
.end method

.method private initialColorSlices()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->getColorSet()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v5, v3}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private normalizeDrawableLevel()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v6, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mTotal:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_0

    sget-object v6, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTotal is illegal:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mTotal:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->TAG:Ljava/lang/String;

    const-string v7, "mColorBars is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v6, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;

    #getter for: Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mValue:F
    invoke-static {v0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->access$000(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;)F

    move-result v6

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mTotal:F

    cmpl-float v6, v8, v6

    if-nez v6, :cond_2

    #setter for: Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mPercentage:I
    invoke-static {v0, v5}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->access$102(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;I)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mTotal:F

    div-float v6, v4, v6

    const v7, 0x461c4000

    mul-float/2addr v6, v7

    float-to-int v6, v6

    #setter for: Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mPercentage:I
    invoke-static {v0, v6}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->access$102(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;I)I

    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mTotal:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    iget v5, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mTotal:F

    div-float v2, v5, v4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_4

    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;

    #getter for: Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mPercentage:I
    invoke-static {v0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->access$100(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    #setter for: Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mPercentage:I
    invoke-static {v0, v5}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->access$102(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private refresh()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->normalizeDrawableLevel()Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int v2, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int v0, v4, v5

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getColorSet()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getProgressDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;

    #getter for: Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mColor:I
    invoke-static {v0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->access$200(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #getter for: Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mPercentage:I
    invoke-static {v0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->access$100(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->TAG:Ljava/lang/String;

    const-string v4, "mBackgroundDrawable is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->updateDrawableBounds(II)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->updateDrawableBounds(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSliceValues(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_0

    sget-object v4, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "valueSize is not equal to colorSliceSize!, valueSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", colorSliceSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->setValue(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->refresh()V

    return-void
.end method

.method public setTotal(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    :goto_0
    iput p1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mTotal:F

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->refresh()V

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public setValue(IF)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->mColorSlices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;

    if-eqz v0, :cond_1

    cmpl-float v1, p2, v2

    if-ltz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->setValue(F)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->refresh()V

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->setValue(F)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the slice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist, value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
