.class Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask$1;
.super Ljava/lang/Object;
.source "HtcFingerprintUpdateFpList.java"

# interfaces
.implements Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask$1;->this$1:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 231
    iget v0, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventID:I

    packed-switch v0, :pswitch_data_0

    .line 238
    :pswitch_0
    return-void

    .line 231
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
