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
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected bridge synthetic onInflateCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->onInflateCustomView()Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateCustomView()Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, view:Landroid/view/View;
    check-cast v0, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    .end local v0           #view:Landroid/view/View;
    return-object v0
.end method

.method protected onSetContainerViewPadding(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 76
    sget v1, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    .line 77
    .local v1, left:I
    sget v3, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->LAYOUT_MARGIN_M5_2:I

    .line 78
    .local v3, top:I
    sget v2, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    .line 79
    .local v2, right:I
    sget v0, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    .line 81
    .local v0, bottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    return-void
.end method

.method protected onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .parameter "layoutParams"

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 99
    return-void
.end method
