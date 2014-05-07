.class Lcom/android/settings/SmartPCStorageDialog$4;
.super Ljava/lang/Thread;
.source "SmartPCStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartPCStorageDialog;->enableUMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartPCStorageDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartPCStorageDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog$4;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$4;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog$4;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartPCStorageDialog;->access$500(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/settings/SmartPCStorageDialog;->mountAsUsbStorage(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/SmartPCStorageDialog;->access$800(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)V

    return-void
.end method
