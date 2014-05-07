.class Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$8;
.super Ljava/lang/Object;
.source "HtcFingerprintUpdateFpList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->showDeleteConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$8;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$8;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$8;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSelectedFpId:I
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$1200(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->deleteFingerprint(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$1300(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;IZ)V

    return-void
.end method
