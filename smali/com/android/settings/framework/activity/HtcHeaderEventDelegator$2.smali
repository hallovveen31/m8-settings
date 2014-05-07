.class final Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;
.super Ljava/lang/Object;
.source "HtcHeaderEventDelegator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->showDeveloperOptionWarning(ILcom/android/settings/framework/activity/HtcWrapHeader;Lcom/htc/preference/HtcPreferenceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/htc/preference/HtcPreferenceActivity;

.field final synthetic val$checkBox:Lcom/htc/widget/HtcCheckBox;

.field final synthetic val$position:I

.field final synthetic val$wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcCheckBox;Lcom/htc/preference/HtcPreferenceActivity;Lcom/android/settings/framework/activity/HtcWrapHeader;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    iput-object p2, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$activity:Lcom/htc/preference/HtcPreferenceActivity;

    iput-object p3, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;

    iput p4, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t ask again:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$activity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_developer_remind_again"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$activity:Lcom/htc/preference/HtcPreferenceActivity;

    iget-object v1, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;

    iget-object v1, v1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget v2, p0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->onHeaderClick(Lcom/htc/preference/HtcPreferenceActivity$Header;I)V

    .line 153
    return-void
.end method
