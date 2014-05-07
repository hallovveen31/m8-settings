.class public Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;
.super Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
.source "HtcAbsDescriptionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/widget/HtcAbsPreferenceView",
        "<",
        "Landroid/widget/TextView;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onInflateCustomView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->onInflateCustomView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateCustomView()Landroid/widget/TextView;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    const v2, 0x2030038

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-object v1
.end method

.method protected onInflatedContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sget v4, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->LAYOUT_MARGIN_M5:I

    sget v5, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->LAYOUT_MARGIN_M5:I

    add-int v3, v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sget v0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->LAYOUT_MARGIN_M2:I

    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onInflatedTitleTextView(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    const v0, 0x203006e

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method protected onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method
