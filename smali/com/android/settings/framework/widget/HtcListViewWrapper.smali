.class public Lcom/android/settings/framework/widget/HtcListViewWrapper;
.super Ljava/lang/Object;
.source "HtcListViewWrapper.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMethod_fillEmptySpace:Lcom/android/settings/framework/reflect/HtcMethodReference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/widget/HtcListViewWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcListViewWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/framework/reflect/HtcMethodReference;

    new-instance v1, Lcom/android/settings/framework/widget/HtcListViewWrapper$1;

    invoke-direct {v1}, Lcom/android/settings/framework/widget/HtcListViewWrapper$1;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/reflect/HtcMethodReference;-><init>(Lcom/android/settings/framework/reflect/HtcMethodReference$IMethodProvider;Z)V

    sput-object v0, Lcom/android/settings/framework/widget/HtcListViewWrapper;->sMethod_fillEmptySpace:Lcom/android/settings/framework/reflect/HtcMethodReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillEmptySpace(Landroid/widget/ListView;Z)V
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->fillEmptySpace(Z)V

    :cond_0
    return-void
.end method

.method public static fillEmptySpace(Lcom/htc/widget/HtcListView;Z)V
    .locals 4

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/widget/HtcListViewWrapper;->sMethod_fillEmptySpace:Lcom/android/settings/framework/reflect/HtcMethodReference;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/framework/reflect/HtcMethodReference;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
