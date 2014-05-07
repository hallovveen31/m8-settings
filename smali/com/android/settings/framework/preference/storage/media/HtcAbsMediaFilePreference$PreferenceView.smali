.class public Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;
.super Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
.source "HtcAbsMediaFilePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/widget/HtcAbsPreferenceView",
        "<",
        "Landroid/view/View;",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected onGetCustomWidgetViewId()I
    .locals 1

    .prologue
    .line 127
    const v0, 0x1020010

    return v0
.end method

.method protected onInflateCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onInflateCustomWidgetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;->onInflateCustomWidgetView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateCustomWidgetView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, CONTEXT:Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, summary:Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 119
    const v2, 0x2030078

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 121
    return-object v1
.end method
