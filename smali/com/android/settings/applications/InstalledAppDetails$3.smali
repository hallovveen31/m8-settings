.class Lcom/android/settings/applications/InstalledAppDetails$3;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->initHardwareAccelerationControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$600(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    .line 833
    return-void
.end method
