.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;
.super Ljava/lang/Object;
.source "HtcEncryptionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, i:Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v1, "who_is_caller"

    const-string v2, "encryption"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;

    iget-object v1, v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method
