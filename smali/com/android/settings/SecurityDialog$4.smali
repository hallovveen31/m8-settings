.class Lcom/android/settings/SecurityDialog$4;
.super Ljava/lang/Object;
.source "SecurityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecurityDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecurityDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SecurityDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/SecurityDialog$4;->this$0:Lcom/android/settings/SecurityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/SecurityDialog$4;->this$0:Lcom/android/settings/SecurityDialog;

    invoke-virtual {v0}, Lcom/android/settings/SecurityDialog;->finish()V

    .line 124
    return-void
.end method
