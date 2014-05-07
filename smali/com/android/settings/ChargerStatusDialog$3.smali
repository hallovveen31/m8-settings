.class Lcom/android/settings/ChargerStatusDialog$3;
.super Ljava/lang/Object;
.source "ChargerStatusDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChargerStatusDialog;->showChargerDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChargerStatusDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/ChargerStatusDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/ChargerStatusDialog$3;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog$3;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-virtual {v0}, Lcom/android/settings/ChargerStatusDialog;->finish()V

    .line 125
    return-void
.end method
