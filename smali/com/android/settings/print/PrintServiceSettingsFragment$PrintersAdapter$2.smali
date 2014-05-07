.class Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$2;
.super Lcom/android/settings/framework/widget/HtcPreferenceView;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$2;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/widget/HtcPreferenceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onGetCustomViewId()I
    .locals 1

    .prologue
    .line 750
    const v0, 0x7f09019c

    return v0
.end method

.method protected onGetTitleViewId()I
    .locals 1

    .prologue
    .line 745
    const v0, 0x7f09002a

    return v0
.end method
