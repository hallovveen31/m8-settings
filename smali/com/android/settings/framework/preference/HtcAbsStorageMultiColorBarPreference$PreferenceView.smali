.class public Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;
.super Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
.source "HtcAbsStorageMultiColorBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/widget/HtcAbsPreferenceView",
        "<",
        "Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;",
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

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->onInflateCustomView()Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateCustomView()Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;
    .locals 2

    new-instance v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    return-object v0
.end method

.method protected onSetContainerViewPadding(Landroid/view/View;)V
    .locals 4

    sget v1, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    sget v3, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->LAYOUT_MARGIN_M5_2:I

    sget v2, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    sget v0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method
