.class Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$1;
.super Landroid/database/ContentObserver;
.source "AllBgDataRestrictionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$1;->this$0:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    .line 34
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$1;->this$0:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->-wrap0(Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;)V

    .line 38
    return-void
.end method
