.class Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity$1;
.super Ljava/lang/Object;
.source "HtcAbsPreferenceAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->setupDialogDismissRelationship()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity$1;->this$0:Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity$1;->this$0:Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->finish()V

    .line 180
    return-void
.end method
