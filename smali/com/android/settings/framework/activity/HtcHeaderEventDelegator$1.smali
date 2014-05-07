.class final Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$1;
.super Ljava/lang/Object;
.source "HtcHeaderEventDelegator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->showDeveloperOptionWarning(ILcom/android/settings/framework/activity/HtcWrapHeader;Lcom/htc/preference/HtcPreferenceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkBox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$1;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$1;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$1;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->performClick()Z

    :cond_0
    return-void
.end method
