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
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected bridge synthetic onInflateCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->onInflateCustomView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateCustomView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, summary:Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 93
    const v2, 0x2030038

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 95
    return-object v1
.end method

.method protected onInflatedContainer(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "context"
    .parameter "container"

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 62
    .local v1, left:I
    sget v4, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->LAYOUT_MARGIN_M5:I

    sget v5, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->LAYOUT_MARGIN_M5:I

    add-int v3, v4, v5

    .line 63
    .local v3, top:I
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 64
    .local v2, right:I
    sget v0, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference$PreferenceView;->LAYOUT_MARGIN_M2:I

    .line 66
    .local v0, bottom:I
    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    return-void
.end method

.method protected onInflatedTitleTextView(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "textView"

    .prologue
    .line 75
    const v0, 0x203006e

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 81
    return-void
.end method

.method protected onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .parameter "layoutParams"

    .prologue
    .line 104
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    return-void
.end method
