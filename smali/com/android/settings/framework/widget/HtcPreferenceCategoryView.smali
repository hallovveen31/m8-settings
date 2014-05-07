.class public Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
.super Lcom/android/settings/framework/widget/HtcTextView;
.source "HtcPreferenceCategoryView.java"

# interfaces
.implements Lcom/android/settings/framework/widget/HtcIfPreferenceHeaderItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcTextView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/widget/HtcTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 95
    .local v3, res:Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setGravity(I)V

    .line 103
    const v6, 0x1020016

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setId(I)V

    .line 106
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setAllCaps(Z)V

    .line 109
    const-string v6, "section_divider_top"

    const v7, 0x2080099

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, backgroundId:I
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setBackgroundResource(I)V

    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, top:I
    const/4 v1, 0x0

    .line 117
    .local v1, bottom:I
    const/4 v4, 0x0

    .line 118
    .local v4, right:I
    const v6, 0x2050001

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 120
    .local v2, left:I
    invoke-virtual {p0, v2, v5, v4, v1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setPadding(IIII)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205018a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setMinHeight(I)V

    .line 127
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getListItemSeparatorTextStyles()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setTextAppearance(Landroid/content/Context;I)V

    .line 129
    return-void
.end method


# virtual methods
.method public bindWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2
    .parameter "wrapHeader"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method
