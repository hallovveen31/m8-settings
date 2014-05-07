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

    .prologue
    .line 20
    const-class v0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->initialize(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->initialize(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->initialize(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private fillTextWithView()V
    .locals 10

    .prologue
    .line 166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v6, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->getChildCount()I

    move-result v0

    .line 169
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 171
    .local v8, v:Landroid/view/View;
    instance-of v9, v8, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    move-object v7, v8

    .line 172
    check-cast v7, Landroid/widget/TextView;

    .line 173
    .local v7, textView:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    .local v3, s:Ljava/lang/String;
    const-string v9, "\n\n"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, ss:[Ljava/lang/String;
    array-length v4, v5

    .line 176
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 177
    aget-object v9, v5, v2

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    .end local v2           #j:I
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #size:I
    .end local v5           #ss:[Ljava/lang/String;
    .end local v7           #textView:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v8           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_2

    .line 189
    :goto_2
    return-void

    .line 187
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    .line 188
    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, -0x2

    .line 64
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 74
    return-void
.end method


# virtual methods
.method public getTextByString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 144
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->fillTextWithView()V

    .line 147
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 148
    const-string v3, ""

    .line 162
    :cond_0
    return-object v3

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    array-length v2, v4

    .line 154
    .local v2, size:I
    add-int/lit8 v1, v2, -0x1

    .line 155
    .local v1, lastOne:I
    const-string v3, ""

    .line 156
    .local v3, text:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 157
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

    .line 158
    if-eq v0, v1, :cond_2

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTextByStringArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->fillTextWithView()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    return-object v0
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 89
    const-string v1, "\n\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, strings:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText([Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setText([Ljava/lang/String;)V
    .locals 6
    .parameter "strings"

    .prologue
    .line 98
    array-length v2, p1

    .line 99
    .local v2, size:I
    add-int/lit8 v1, v2, -0x1

    .line 100
    .local v1, lastOne:I
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->removeAllViews()V

    .line 101
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mTexts:[Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 105
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v3, textView:Landroid/widget/TextView;
    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mContext:Landroid/content/Context;

    const v5, 0x203006e

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 116
    if-eq v0, v1, :cond_1

    .line 117
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 122
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_2
    return-void
.end method
