.class Lcom/android/settings/DateTimeSettings$4;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-static {}, Lcom/android/settings/DateTimeSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DateTimeSettings"

    const-string v3, "onClick: User press ok button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDefaultTimeFormatSetting()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/DateTimeSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DateTimeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: sieDefaultTimeFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;
    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->access$300(Lcom/android/settings/DateTimeSettings;)Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;
    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->access$300(Lcom/android/settings/DateTimeSettings;)Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->showParentDialog()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c034f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/DateTimeSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "DateTimeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: defaultTimeFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;
    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->access$300(Lcom/android/settings/DateTimeSettings;)Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
