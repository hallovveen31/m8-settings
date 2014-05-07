.class public Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;
.super Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
.source "HtcAbsProgressBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/widget/HtcAbsPreferenceView",
        "<",
        "Lcom/htc/widget/HtcProgressBar;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected bridge synthetic onInflateCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->onInflateCustomView()Lcom/htc/widget/HtcProgressBar;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateCustomView()Lcom/htc/widget/HtcProgressBar;
    .locals 5

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f040077

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, view:Landroid/view/View;
    check-cast v1, Lcom/htc/widget/HtcProgressBar;

    .end local v1           #view:Landroid/view/View;
    return-object v1
.end method

.method protected onSetContainerViewPadding(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 81
    sget v1, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    .line 82
    .local v1, left:I
    sget v3, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->LAYOUT_MARGIN_M5_2:I

    .line 83
    .local v3, top:I
    sget v2, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    .line 84
    .local v2, right:I
    sget v0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    .line 86
    .local v0, bottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    return-void
.end method

.method protected onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .parameter "layoutParams"

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 104
    return-void
.end method
