.class Lcom/android/settings/SmartPCStorageDialog$1$1;
.super Ljava/lang/Object;
.source "SmartPCStorageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartPCStorageDialog$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SmartPCStorageDialog$1;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartPCStorageDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog$1$1;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$1$1;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    iget-object v0, v0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
