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

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onInflateCustomView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->onInflateCustomView()Lcom/htc/widget/HtcProgressBar;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateCustomView()Lcom/htc/widget/HtcProgressBar;
    .locals 5

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040077

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcProgressBar;

    return-object v1
.end method

.method protected onSetContainerViewPadding(Landroid/view/View;)V
    .locals 4

    sget v1, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    sget v3, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->LAYOUT_MARGIN_M5_2:I

    sget v2, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    sget v0, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;->LAYOUT_MARGIN_M1:I

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onSetCustomViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method
