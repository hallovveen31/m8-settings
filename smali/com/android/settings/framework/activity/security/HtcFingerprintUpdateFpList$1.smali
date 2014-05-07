.class Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;
.super Ljava/lang/Object;
.source "HtcFingerprintUpdateFpList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->backToSecuritySettingsAndFinish()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$900(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    return-void
.end method
