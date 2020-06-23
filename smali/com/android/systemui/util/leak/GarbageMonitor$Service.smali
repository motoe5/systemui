.class public Lcom/android/systemui/util/leak/GarbageMonitor$Service;
.super Lcom/android/systemui/SystemUI;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static final ENABLED:Z


# instance fields
.field private mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "debug.enable_leak_reporting"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    :cond_0
    sput-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->ENABLED:Z

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->ENABLED:Z

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    const-class v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->start()V

    .line 97
    return-void
.end method
