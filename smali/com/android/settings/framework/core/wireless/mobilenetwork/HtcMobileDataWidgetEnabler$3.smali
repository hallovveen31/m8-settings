.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$3;
.super Ljava/lang/Object;
.source "HtcMobileDataWidgetEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$3;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 300
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$3;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->setDataRoamingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->access$200(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$3;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->persistMobileDataSettingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->access$300(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;Z)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler$3;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->persistMobileDataSettingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;->access$300(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;Z)V

    goto :goto_0
.end method
