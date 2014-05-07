.class Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;
.super Ljava/lang/Object;
.source "HtcMiniSpecialWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTag"
.end annotation


# instance fields
.field public mItem:Lcom/htc/widget/HtcListItem;

.field public mRadio:Lcom/htc/widget/HtcRadioButton;

.field public mTitle:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$1:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;Lcom/htc/widget/HtcListItem;Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/widget/HtcRadioButton;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "title"
    .parameter "radio"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->this$1:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mItem:Lcom/htc/widget/HtcListItem;

    .line 305
    iput-object p3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mTitle:Lcom/htc/widget/HtcListItem2LineText;

    .line 306
    iput-object p4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter$ViewTag;->mRadio:Lcom/htc/widget/HtcRadioButton;

    .line 307
    return-void
.end method
