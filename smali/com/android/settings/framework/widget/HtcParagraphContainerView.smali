.class public Lcom/android/settings/framework/widget/HtcParagraphContainerView;
.super Landroid/widget/LinearLayout;
.source "HtcParagraphContainerView.java"


# static fields
.field private static final SPLIT_PATTERN:Ljava/lang/String; = "\n\n"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mTexts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private fillTextWithView()V
    .locals 10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    move-object v7, v8

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, "\n\n"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v4, v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v9, v5, v2

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_2

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3

    const/4 v1, -0x2

    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method


# virtual methods
.method public getTextByString()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->fillTextWithView()V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v3, ""

    :cond_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    array-length v2, v4

    add-int/lit8 v1, v2, -0x1

    const-string v3, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eq v0, v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTextByStringArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->fillTextWithView()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    return-object v0
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    const-string v1, "\n\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText([Ljava/lang/String;)V

    return-void
.end method

.method public setText([Ljava/lang/String;)V
    .locals 6

    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    const v5, 0x203006e

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    if-eq v0, v1, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method
