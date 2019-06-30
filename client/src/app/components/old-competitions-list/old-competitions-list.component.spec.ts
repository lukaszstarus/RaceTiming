import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { OldCompetitionsListComponent } from './old-competitions-list.component';

describe('OldCompetitionsListComponent', () => {
  let component: OldCompetitionsListComponent;
  let fixture: ComponentFixture<OldCompetitionsListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OldCompetitionsListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(OldCompetitionsListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
