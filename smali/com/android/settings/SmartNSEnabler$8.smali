.class Lcom/android/settings/SmartNSEnabler$8;
.super Ljava/lang/Object;
.source "SmartNSEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSEnabler;->enableTetheringWithApn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNSEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNSEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$8;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "SmartNS_Enabler"

    const-string v1, "Set APN item and enable UsbTethering."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$8;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/SmartNSUtility;->setSelectedDunId(ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$8;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->enableTethering()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
