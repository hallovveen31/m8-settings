.class Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;
.super Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;
.source "HtcTransferITunesTipsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$titleResId:I


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;Landroid/content/Context;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;

    iput-object p3, p0, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;->val$titleResId:I

    invoke-direct {p0, p2}, Lcom/android/settings/framework/preference/HtcAbsDescriptionPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;->val$titleResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
