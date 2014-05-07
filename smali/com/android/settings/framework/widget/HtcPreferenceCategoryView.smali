.class public Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
.super Lcom/android/settings/framework/widget/HtcTextView;
.source "HtcPreferenceCategoryView.java"

# interfaces
.implements Lcom/android/settings/framework/widget/HtcIfPreferenceHeaderItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/widget/HtcTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setGravity(I)V

    const v6, 0x1020016

    invoke-virtual {p0, v6}, Landroid/view/View;->setId(I)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/widget/HtcTextView;->setAllCaps(Z)V

    const-string v6, "section_divider_top"

    const v7, 0x2080099

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const v6, 0x2050001

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2, v5, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205018a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getListItemSeparatorTextStyles()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/android/settings/framework/widget/HtcTextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bindWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v1, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 0

    return-object p0
.end method
